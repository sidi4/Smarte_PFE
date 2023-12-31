import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isLoading = false.obs;

  setIsLoading(bool newValue) {
    isLoading.value = newValue;
  } //ha4i le methode vihe un variable boolen par on fauls  sabeg ned5lo le app 2temm yezgnen 2lyn 3ode true 2lyn ned5lohe 23ode fauls 
}  