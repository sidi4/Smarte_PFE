import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volsapp/app_constants.dart';
import 'package:volsapp/config.dart';
import 'package:volsapp/screens/home_screen.dart';
import 'package:volsapp/screens/login_screen.dart';
import 'package:volsapp/services/firebase_service.dart';
import 'package:volsapp/utils.dart';
import 'package:volsapp/widget/my_button.dart';
import 'package:volsapp/widget/my_text_filed.dart';
import '../controllers/auth_controller.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  final FirebaseService _firebaseService = FirebaseService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFffffff),
        body: SingleChildScrollView(

          padding: const EdgeInsets.only(left: 40, right: 40),
          
          child: Form(
              key: _formKey,
                 child:Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: fullHeight(context) * 0.20),
               Transform.rotate(
                        angle: 45 * pi / 180,
                        child: Icon(Icons.flight,
                          size: 60, color: Colors.black),
                      ),
               SizedBox(height: fullHeight(context) * 0.04,),
             
              Text("Incription",
                  style: TextStyle(
                      fontSize: fontSize10(context) * 2.9,
                      fontWeight: FontWeight.w700)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.1),
                child: Container(
                  height: fullHeight(context) * 0.004,
                  width: 120.0,
                  color: Color.fromARGB(203, 0, 0, 0),
                ),
              ),

              SizedBox(
                height: fullHeight(context) * 0.02,
              ),
             MyTextFiled(
               labelText: "Nom",
               
             ),
              SizedBox(
                height: fullHeight(context) * 0.04,
              ),
               MyTextFiled(
               labelText: "email",

               controller: _authController.emailController,
             ),
              SizedBox(
                height: fullHeight(context) * 0.04,
              ),

             MyTextFiled(
              labelText: "Mot de passe",
               controller: _authController.passwordController,
              hasIcon: true,
             ),
             
               SizedBox(
                height: fullHeight(context) * 0.06,
              ),
            Obx(() => _authController.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
              :MyButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                            _authController.setIsLoading(true);
                            var loginResult = await _firebaseService.signUp(
                                _authController.emailController.text,
                                _authController.passwordController.text);
                            if (loginResult == true) {
                              _authController.setIsLoading(false);
                              Get.to(MainScreen());
                            } else {
                              _authController.setIsLoading(false);
                              showSnackbarError('Login failed !');
                            }
                          }
                   
                  },
                  title: 'S\'inscrire')),

                   SizedBox(height: fullHeight(context) * 0.04),
                   Center(
                    child:GestureDetector(
                       onTap: () => Get.to(LoginScreen()),
                     child: RichText(
                      
                     text: const TextSpan(

                     text: "Vous avez deja un compte? ",
                     style: TextStyle(
                     color: Colors.black, fontWeight: FontWeight.w500),
                     children: <TextSpan>[
                    TextSpan(
                      
                        text: 'Conectez-ici',
                        style: TextStyle(
                            color: AppConstants.secondColor,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
             )),
            ]),
          ),
        ));
  }
}
