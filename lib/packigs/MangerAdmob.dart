
// import 'dart:io';
// import 'package:admob_flutter/admob_flutter.dart';

// class AdsManger {
//   static bool _testMode = true;

//   ///
//   static String get appId {
//     if (_testMode = true) {
//       return AdmobBanner.testAdUnitId;
//     }
//     if (Platform.isAndroid) {
//       return "ca-app-pub-4134312680977757~4412421838";
//     } else if (Platform.isIOS) {
//       return "";
//     } else {
//       throw new UnimplementedError("Unsuported platform 11");
//     }
//   }
//   ///
//   static String get bannerAdUnitId {
//     if (_testMode = true) {
//       return AdmobBanner.testAdUnitId;
//     }
//     if (Platform.isAndroid) {
//       return "ca-app-pub-4134312680977757/6358808767";
//     } else if (Platform.isIOS) {
//       return "";
//     } else {
//       throw new UnimplementedError("Unsuported platform");
//     }
//   }
//   ///
//   static String get nativeAdUnitId {
//     if (_testMode = true) {
//       return AdmobBanner.testAdUnitId;
//     }
//     if (Platform.isAndroid) {
//       return "ca-app-pub-4134312680977757/2395513022";
//     } else if (Platform.isIOS) {
//       return "";
//     } else {
//       throw new UnimplementedError("Unsuported platform");
//     }
//   }
//   ///
//   static String get interstitialAdUnitId {
//     if (_testMode = true) {
//       return AdmobBanner.testAdUnitId;
//     }
//     if (Platform.isAndroid) {
//       return "ca-app-pub-4134312680977757/5971795955";
//     } else if (Platform.isIOS) {
//       return "";
//     } else {
//       throw new UnimplementedError("Unsuported platform");
//     }
//   }
// }