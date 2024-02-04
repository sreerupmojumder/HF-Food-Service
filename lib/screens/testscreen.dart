import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hfsmobileapp/screens/homepagescreen.dart';
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            print(snapshot.toString());
            if(snapshot.hasData){
              ConnectivityResult? result = snapshot.data;
              if(result == ConnectivityResult.mobile || result == ConnectivityResult.wifi){
                //connected to  Internet
                return HomePage();
              }else {
                //no Internet
                return  noInternet();
              }
            }else{
              return noInternet();
            }
          },
        ),
      )
    );
  }


  Widget noInternet() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/nointernet.png'),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text('Check your connection, then refresh the page.'),
          )
        ],
      ),
    );
  }
}
