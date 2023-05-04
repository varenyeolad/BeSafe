import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber/screens/login.dart';
import 'package:uber/screens/phone_registration.dart';
import 'package:uber/screens/register.dart';
import 'package:uber/screens/walkthrough.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";
const String LoginRoute = "login";
const String PhoneRegisterRoute = "phone-register";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    case LoginRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Login());
    case PhoneRegisterRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => PhoneRegistration());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
