import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
class Routes {
  static Router router;
  static String page1 ='/';
  static void configureRoutes(Router router){
    router.define(
      page1, handler: Handler(handlerFunc:(context,params) =>Page1()));
    router.define(
      page2, handler: Handler(handlerFunc:(context,paramas) {
        var message=params['massage']?.first;
        return Page2(message);
      }));
      Routes.router=router;
  }
}