import 'package:flutter/material.dart';
import 'package:mygroceryliste/packigs/AdMobBannerListHelper.dart';


class RewardedAdsPage extends StatelessWidget {
  
  AdmobHelper admobHelper = new AdmobHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Rewarded Page"),), 
          backgroundColor: Colors.green[900],
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //ElevatedButton(onPressed: (){admobHelper.loadRewardedAd();}, child: Text("click me ")),
            ElevatedButton(onPressed: (){admobHelper.loadRewardedAd(); admobHelper.showRewaredAd(); Navigator.of(context).pushNamed("Home");}, child: Text("go to Home Page")),
          ],
        ) ,),
    );
  }
}