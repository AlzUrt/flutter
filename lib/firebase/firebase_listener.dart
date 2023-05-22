import 'dart:convert';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart' as http;

// Méthode pour s'inscrire avec une adresse e-mail et un mot de passe
Future<UserCredential?> signUp(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    // Enregistrer l'événement d'analyse pour l'inscription réussie
    await FirebaseAnalytics.instance.logEvent(name: 'sign_up');

    return userCredential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('Le mot de passe est trop faible.');
    } else if (e.code == 'email-already-in-use') {
      print('Cet e-mail est déjà utilisé par un autre compte.');
    }
    // Gérer d'autres erreurs Firebase ici

    return null;
  } catch (e) {
    print(e.toString());
    return null;
  }
}

// Méthode pour se connecter avec une adresse e-mail et un mot de passe
Future<UserCredential?> signIn(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);

    // Enregistrer l'événement d'analyse pour la connexion réussie
    await FirebaseAnalytics.instance.logEvent(name: 'sign_in');

    // Envoyer une notification FCM à vous-même pour indiquer que l'utilisateur s'est connecté avec succès
    String serverKey =
        'AAAAiuI83Y8:APA91bFxGj9J1qvS9GqVR-wlzgAhWxusbFoX4AZ8SNdXSfuXHq70yG0P7BXMmnL8HEUAj2YhHBH7bBqAm6JW9XQDQGaPI4uVbbWIRI_f6nm5YtNuBaRK0O3Eq4GLfBtVLegWEvndjPUW';
    String? fcmToken = await FirebaseMessaging.instance.getToken();

    final response = await http.post(
      Uri.parse('https://fcm.googleapis.com/fcm/send'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'key=$serverKey',
      },
      body: jsonEncode(
        <String, dynamic>{
          'notification': <String, dynamic>{
            'body': 'Vous êtes connecté',
            'title': 'Padsou'
          },
          'priority': 'high',
          'data': <String, dynamic>{
            'click_action': 'FLUTTER_NOTIFICATION_CLICK',
            'id': '1',
            'status': 'done'
          },
          'to': fcmToken,
        },
      ),
    );
    if (response.statusCode == 200) {
    } else {}

    return userCredential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
    } else if (e.code == 'wrong-password') {}
    // Gérer d'autres erreurs Firebase ici

    return null;
  } catch (e) {
    return null;
  }
}

// Méthode pour se déconnecter
Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();

  // Enregistrer l'événement d'analyse pour la déconnexion
  await FirebaseAnalytics.instance.logEvent(name: 'sign_out');

  print('Utilisateur déconnecté.');
}
