import 'package:flutter/material.dart';
import 'package:padsou/assets/colors.dart';
import 'package:padsou/ui/typo.dart';

class register extends StatefulWidget {
  @override
  AccueilState createState() => AccueilState();
}

class AccueilState extends State<register> {
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
                    style: CustomTextStyle.title(
                        color: CustomColors.lightBlack),
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









            Spacer(),
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
                    Text(
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
                          if (_formKey.currentState?.validate() ?? false) {
                            // TODO: Handle form submission
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: CustomColors.darkBlue,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text('S\'inscrire'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        Spacer(),
        // Texte en bas de page
         Align(
          alignment: Alignment.bottomCenter,
          child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Déjà un compte ?',
                  style: TextStyle(color: CustomColors.darkGrey),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
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