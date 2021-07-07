

// import 'package:admob_flutter/admob_flutter.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_native_admob/flutter_native_admob.dart';
// import 'package:flutter_native_admob/native_admob_controller.dart';
// import 'package:mygroceryliste/packigs/MangerAdmob.dart';


// class TestAdmob extends StatefulWidget {
//   @override
//   _TestAdmobState createState() => _TestAdmobState();
// }

// class _TestAdmobState extends State<TestAdmob> {
//   final _nativeAdController = NativeAdmobController();
//   late AdmobBannerSize bannerSize;
//   late AdmobInterstitial interstitialAd;

  

  

//   @override
//   void initState() {
//     super.initState();
    
//     //Ads
//     interstitialAd = AdmobInterstitial(
//       adUnitId: AdsManger.interstitialAdUnitId,
//       listener: (AdmobAdEvent event, Map<String, dynamic> args) {
//         if (event == AdmobAdEvent.closed) interstitialAd.load(); 
            
//       },
//     );

//     interstitialAd.load();
//     _nativeAdController.reloadAd(forceRefresh: true);

    

//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     interstitialAd.dispose();
//     _nativeAdController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Center(child: Text("MyGrocery App"),), 
//           backgroundColor: Colors.green[100],
//           ),
//         body: Stack(children: [
//           Column(children: [
//             // ListTile(
//             //     title: Text("Log-In", style: TextStyle(color: Colors.black , fontSize: 20)) ,
//             //     leading: Icon(Icons.home , color: Colors.green, size: 29,) ,
//             //     subtitle: Text("AL Asalah" , style: TextStyle(color: Colors.green , fontSize: 15)) ,
//             //     isThreeLine: true,
//             //     onLongPress: (){
//             //       print("LongPress") ;
//             //     },
//             //     onTap: (){
//             //      return interstitialAd.show();
                  
//             //     },
//             //   ) ,
//             //   Container(
//             //   height: 90,
//             //   padding: EdgeInsets.all(10),
//             //   margin: EdgeInsets.only(bottom: 20.0),
//             //   child: NativeAdmob(
//             //     // Your ad unit id
//             //     adUnitID: AdsManger.nativeAdUnitId,
//             //     numberAds: 3,
//             //     controller: _nativeAdController,
//             //     type: NativeAdmobType.banner,
//             //   ),
//             // ),
           
//             //  SizedBox(height: 30,),
//             //   ListTile(
//             //     title: Text("Log-In", style: TextStyle(color: Colors.black , fontSize: 20)) ,
//             //     leading: Icon(Icons.home , color: Colors.green, size: 29,) ,
//             //     subtitle: Text("AL Asalah" , style: TextStyle(color: Colors.green , fontSize: 15)) ,
//             //     isThreeLine: true,
//             //     onLongPress: (){
//             //       print("LongPress") ;
//             //     },
//             //     onTap: (){
//             //      return interstitialAd.show();
                  
//             //     },
//             //   ) ,
//              SizedBox(height: 10,),
//              Container(height: 100 , child: AdmobBanner(
//                adUnitId: AdsManger.bannerAdUnitId,
//                adSize: AdmobBannerSize.SMART_BANNER(context),
//              ),),
//              Container( padding: EdgeInsets.all(10), child: Text("Proudacts List" , style: TextStyle(fontSize: 30),)),
//              Image.asset("images/MyGrocery.png"),
             
//             //  SizedBox(height: 10,),
//             //  Container(height: 100 , child: AdmobBanner(
//             //    adUnitId: AdsManger.bannerAdUnitId,
//             //    adSize: AdmobBannerSize.SMART_BANNER(context),
//             //  ),),
             
             
             
             
//           ],),
          
//         ],)
        
//         );
//   }
// }