// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoppingmallnew/states/authen.dart';
import 'package:shoppingmallnew/states/buyer_service.dart';
import 'package:shoppingmallnew/states/create_account.dart';
import 'package:shoppingmallnew/states/rider_service.dart';
import 'package:shoppingmallnew/states/saler_service.dart';
import 'package:shoppingmallnew/utility/my_constant.dart';

//สร้างตัวแปรสำหรับเก็บ Route
 
final Map<String,WidgetBuilder>map={
 
  '/authen': (BuildContext context)=> Authen(),
  '/createAccount':(BuildContext context) => CreateAccount(),
  '/buyerService' :(BuildContext context) => BuyerService(),
  '/salerService' :(BuildContext context) => SalerService(),
  '/riderService' :(BuildContext context) => RiderService(),
};

String? initailRoute;

void main(){
  initailRoute= MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initailRoute,
    );
  }
}