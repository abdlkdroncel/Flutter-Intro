import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kadironcel/renkler.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYukseklik=ekranBilgisi.size.height;
    final double ekranGenislik=ekranBilgisi.size.width;

    var d=AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Kebap Dünyası",style: TextStyle(color: yaziRenk1,fontFamily: "Dancing",fontSize: ekranGenislik/19),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYukseklik/500),
            child: Text(d!.kebapBaslik,style: TextStyle(fontSize: 34,color: anaRenk,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding:  EdgeInsets.all(ekranYukseklik/400),
            child: Image.asset("resimler/urfakebap.png",),
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYukseklik/100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: d.onion),
                Chip(icerik: d.pepper),
                Chip(icerik: d.bread),
                Chip(icerik: d.tomato),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranYukseklik/20),
            child: Column(
              children: [
                Text(d.time,style: TextStyle(color: yaziRenk2,fontSize: 22,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(d.delivery,style: TextStyle(color: anaRenk,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Text(d.description,style: TextStyle(color: yaziRenk2,fontSize: 22),),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(ekranYukseklik/25),
            child: Row(
              children: [
                Text(d.price,style: TextStyle(color: anaRenk,fontSize: 44,fontWeight: FontWeight.bold),),
                const Spacer(),
                SizedBox(width: 200,height: 50,
                  child: TextButton(onPressed: (){},
                    child: Text(d.addToCart,style: TextStyle(color: yaziRenk1,fontSize: 18),),
                    style: TextButton.styleFrom(backgroundColor: anaRenk,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Chip extends StatelessWidget {

  String icerik;
  
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      child: Text(icerik,style: TextStyle(color: yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}


