import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mygroceryliste/packigs/AdMobBannerListHelper.dart';

class Winer extends StatelessWidget {
  const Winer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Winner page"),), 
          backgroundColor: Colors.green[900],
          ),
      body: ListView(children: [
        Container(child: Image.asset("images/winer.png") ,height: 200 , width: 200,),
        Container(child: Center(child: Text("congratulations you are the winner"),),)
      ],),
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