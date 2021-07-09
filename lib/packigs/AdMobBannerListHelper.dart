import 'package:google_mobile_ads/google_mobile_ads.dart';


class AdmobHelper {
  static String get bannerUnit => 'ca-app-pub-3940256099942544/6300978111';
  
  InterstitialAd? _interstitialAd;

  RewardedAd? _rewardedAd;

  int num_of_attempt_load = 0;

  

  void loadRewardedAd(){
    RewardedAd.load(
      adUnitId: "ca-app-pub-3940256099942544/5224354917", 
      request: AdRequest(), 
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (RewardedAd ad){
          print("Ad Loaded");
          this._rewardedAd = ad;
        },
        onAdFailedToLoad: (LoadAdError error){
          // LoadRewardedAd();
        })
        );
  }

  void showRewaredAd(){
    _rewardedAd!.show(
      onUserEarnedReward: (RewardedAd ad,RewardItem rpoint){
        print("Reward Earned is ${rpoint.amount}");
      }
      );

    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (RewardedAd ad){
        
      },
      onAdFailedToShowFullScreenContent: (RewardedAd ad, AdError error){
        ad.dispose();
      },
      onAdDismissedFullScreenContent: (RewardedAd ad){
        ad.dispose();
      },
      onAdImpression: (RewardedAd ad) => print("$ad impression accurred"),
    );
  }

  static initialization(){
    if(MobileAds.instance == null)
    {
      MobileAds.instance.initialize();
    }
  }

  void createInterd(){

    InterstitialAd.load(
      adUnitId: "ca-app-pub-3940256099942544/1033173712", 
      request: AdRequest(), 
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad){
          _interstitialAd = ad;
          num_of_attempt_load = 0;
        }, 
        onAdFailedToLoad: (LoadAdError error){
          num_of_attempt_load +1;
          _interstitialAd = null;

          if(num_of_attempt_load<=2){
            createInterd();
          }
        }));
  }

  void showInterad(){

    if(_interstitialAd == null){
      return;
    }

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (InterstitialAd ad){
        print("ad onAdshowdFullscreen");
      },
      onAdDismissedFullScreenContent: (InterstitialAd ad){
        print("ad Disposed");
        ad.dispose();
      },
      onAdFailedToShowFullScreenContent: (InterstitialAd ad,AdError aderror){
          print("$ad OnAdFailed $aderror");
          ad.dispose();
          createInterd();
      }
    );
    _interstitialAd!.show();

    _interstitialAd = null;
  }

  static BannerAd getBannerAd(){
    BannerAd bAd = new BannerAd(
    size: AdSize.largeBanner , 
    adUnitId: 'ca-app-pub-3940256099942544/6300978111', 
    listener: BannerAdListener(
      onAdLoaded: (Ad ad){
        print("Ad Loded");
      },
      onAdFailedToLoad: ( Ad ad,LoadAdError error){
        print(" Ad Failed");
        ad.dispose();
      },
      onAdOpened: (Ad ad){
        print("Ad opened");
      },
      
      onAdClosed: (Ad ad){
        print("Ad closed");
      }
       ), 
    request: AdRequest());

    return bAd;
  }
}