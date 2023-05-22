import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

    return userCredential;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('Aucun utilisateur correspondant à cet e-mail.');
    } else if (e.code == 'wrong-password') {
      print('Mot de passe incorrect.');
    }
    // Gérer d'autres erreurs Firebase ici

    return null;
  } catch (e) {
    print(e.toString());
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
