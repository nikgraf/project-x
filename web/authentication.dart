library authentication_controller;

import 'package:angular/angular.dart';

@NgController(
    selector: '[authentication]',
    publishAs: 'authCtrl')
class AuthenticationController {

  String welcomeText = "Hello";
}