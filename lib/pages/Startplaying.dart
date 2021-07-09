import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:mygroceryliste/packigs/AdMobBannerListHelper.dart';

class StartPlay extends StatelessWidget {
  

  AdmobHelper admobHelper = new AdmobHelper();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Games Page"),), 
          backgroundColor: Colors.green[900],
          ),
      body: ListView(children: [
        Container(padding: EdgeInsets.all(12) , child: Center(child: Text("choos your favourits games" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w700),),),),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 1" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game1.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40),
            onTap: (){
              
              Navigator.of(context).pushNamed('FirstGame');
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 2" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game2.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 3" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game3.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
          ),
        ), 
        Padding(
          padding: const EdgeInsets.all(12),
          child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 4" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game4.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
          ),
        ),
         Padding(
           padding: const EdgeInsets.all(12),
           child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 5" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game5.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
        ),
         ),
         Padding(
           padding: const EdgeInsets.all(12),
           child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 6" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game6.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
        ),
         ),
         Padding(
           padding: const EdgeInsets.all(12),
           child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 7" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game5.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
        ),
         ),
         Padding(
           padding: const EdgeInsets.all(12),
           child: ListTile(
            title: Center(child: Container(padding: EdgeInsets.all(10) , child: Text("game 8" , style: TextStyle(fontSize: 30),)),),
            leading: Image.asset("images/game4.png" , height: 100, width: 100,),
            trailing: Icon(Icons.play_arrow , size: 40,),
        ),
         ),
        Container(padding: EdgeInsets.all(10), child: Center(child: Text("start play now " , style: TextStyle(fontSize: 30),),),),
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