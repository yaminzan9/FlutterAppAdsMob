// @dart=2.9


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mygroceryliste/component/Home.dart';
import 'package:mygroceryliste/packigs/AdMobBannerListHelper.dart';
import 'package:mygroceryliste/packigs/AdMobReowrded.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  AdmobHelper.initialization();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //start project
      debugShowCheckedModeBanner: false,
      title: "My Grocery",
      home: AdMobServicess(),
      routes: {
        'Home': (context) {
          return Home();
        },
        'RewardedAdsPage': (context) {
          return RewardedAdsPage();
        }
      },
      //end project
    );
  }
}

class AdMobServicess extends StatefulWidget {
  

  @override
  _AdMobServicessState createState() => _AdMobServicessState();
}

class _AdMobServicessState extends State<AdMobServicess> {
  List<String> datas; // late for null safty
  
  List<Object> dataads;

  AdmobHelper admobHelper = new AdmobHelper();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datas = [];


    for(int i = 1; i <= 20; i++){
      datas.add("List Item $i");
    }

    dataads = List.from(datas);

    for (var i = 0; i <= 0; i++) {
      var min = 1;
      var rm = new Random();

      var rannumpos = min + rm.nextInt(18);

      dataads.insert(rannumpos, AdmobHelper.getBannerAd()..load());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("MyGrocery App"),), 
          backgroundColor: Colors.green[900],
          ),
      body: ListView.builder(
        itemCount: dataads.length , 
        itemBuilder: (context,index){
          if(dataads[index] is String) {
            return ListTile(
                      title: Text(dataads[index].toString()),
                      leading: Icon(Icons.exit_to_app),
                      trailing: Icon(Icons.ice_skating),
                      onTap: (){
                        admobHelper.createInterd();
                      },
                      onLongPress: (){
                        admobHelper.showInterad();
                        Navigator.of(context).pushNamed("RewardedAdsPage");
                      },
                    );
          } else {
            final Container adcontent = Container(
              height: 50,
              child: AdWidget(
                ad: dataads[index] as BannerAd,
                key: UniqueKey(),
                ),
            );
            return adcontent;
          }
         
      }),
      bottomNavigationBar: 
       Container(
          child: AdWidget(
            ad: AdmobHelper.getBannerAd()..load(),
            key: UniqueKey(),
            ),
            height: 100,
        ),
    );
  }
}




