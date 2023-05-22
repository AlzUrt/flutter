import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/firebase/firebase_listener.dart';
import 'package:padsou/ui/typo.dart';
import 'package:padsou/views/login.dart';
import 'package:padsou/components/button_card.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightWhite,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 80),

          // Texte de bienvenue
          Column(
            children: [
              Center(
                child: Text(
                  'Bienvenue 😎',
                  style: CustomTextStyle.title(color: CustomColors.lightBlack),
                ),
              ),
              const SizedBox(height: 13),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    'Inscris-toi pour avoir les meilleurs plans étudiants !',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.textgras(
                        color: CustomColors.lightBlack),
                  ),
                ),
              ),
            ],
          ),

          const Spacer(),
          // Formulaire
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Ton adresse e-mail',
                    ),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Veuillez entrer votre adresse e-mail';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Ton mot de passe',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Veuillez entrer votre mot de passe';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 20),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Confirme ton mot de passe',
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Veuillez confirmer votre mot de passe';
                      }
                      if (value != _passwordController.text) {
                        return 'Les mots de passe ne correspondent pas';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                    style: TextStyle(color: CustomColors.darkGrey),
                  ),
                  const SizedBox(height: 20),
                  // Bouton S'inscrire
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Appeler la méthode signUp lors du clic sur le bouton d'inscription
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        signUp(email, password);
                      },
                      style: CustomButtonStyle.title(
                          backgroundColor: CustomColors.darkBlue,
                          textColor: Colors.white),
                      child: const Text('S\'inscrire'),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),
          // Texte en bas de page
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Déjà un compte ?',
                  style: TextStyle(color: CustomColors.darkGrey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    'Connecte-toi !',
                    style: TextStyle(color: CustomColors.darkBlue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
