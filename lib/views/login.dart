import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/firebase/firebase_listener.dart';
import 'package:padsou/ui/typo.dart';
import 'package:padsou/views/plans.dart';
import 'package:padsou/views/register.dart';
import 'package:padsou/components/button_card.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                  'Te revoilà ! 🔥',
                  style: CustomTextStyle.title(color: CustomColors.lightBlack),
                ),
              ),
              const SizedBox(height: 13),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text(
                    'Reviens vite pour profiter des bons plans',
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.textgras(
                        color: CustomColors.lightBlack),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 45),
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

                  Row(
                    children: [
                      Expanded(child: Container()),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Register()),
                          );
                        },
                        child: const Text(
                          'Mot de passe oublié ?',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: CustomColors.darkGrey),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  // Bouton S'inscrire
                  SizedBox(
                    height: 56,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        String email = _emailController.text;
                        String password = _passwordController.text;
                        signIn(email, password);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Plans()),
                          );
                        
                      },
                      style: CustomButtonStyle.title(
                          backgroundColor: CustomColors.darkBlue,
                          textColor: Colors.white),
                      child: const Text('Se connecter'),
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
                  'Pas encore inscrit ?',
                  style: TextStyle(color: CustomColors.darkGrey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: const Text(
                    'Allez viens !',
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
