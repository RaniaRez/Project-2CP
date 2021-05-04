import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:somthn/ButtonAvatar.dart';
import 'package:somthn/ButtonNomUser.dart';
import 'package:somthn/ButtonSupprimer.dart';
import 'package:somthn/ChoixDomaines.dart';
import 'package:somthn/ChooseAvatar.dart';
import 'package:somthn/Ecriremdp.dart';
import 'package:somthn/Entrernom.dart';
import 'package:somthn/HomeButton.dart';
import 'package:somthn/buttonNom.dart';
import 'package:somthn/buttonmdp.dart';
import 'myicons.dart';
import 'settingsButton.dart';
import 'BacksButton.dart';
import 'ButtonAllons-y.dart';
import 'PurpleOwlIcon.dart';
import 'BranchIcon.dart';
import 'BulleIcon.dart';
import 'ClassUser.dart';
import 'PlusButton.dart';
import 'buttonGoTo.dart';
import 'buttonStatistique.dart';
import 'buttonUserSettings.dart';
import 'Home.dart';

class Userinfo extends StatefulWidget {


  @override
  _UserinfoState createState() => _UserinfoState();
}

class _UserinfoState extends State<Userinfo> {
  List<String> utilisateur = <String>['AVATAR', 'NOM', 'MOT DE PASSE','SUPPRIMER'];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body:
      Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/forestbackground.jpg"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              top: 50.00,
              left: 300.00,
              child: SettingsButton(onPressed: (){
                print("HELL YEAH");
              },)
          ),

          Positioned(
              top: 5.00,
              right: 250.00,
              child: BacksButton(onPressed: (){
                print("HELL YEAH");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),);
              },)
          ),
          Positioned(
            top: -3.5,
            left: 100.0,
            child: HomeButton(
              onPressed: (){
                print("HELL YEAH");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),);

              },
            ),
          ),
          Positioned(
            top: 480.00,
            left : 50.00,
            right: 50.00,
            child: ButtonSupprimer(
              onPressed: (){

                print("HELL YEAH");
                },
            ),
          ),
          Positioned(
            top: 150,
            left: 50.0,
            child: ButtonAvatar(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseAvatar()),);
                print("HELL YEAH");
              },
            ),
          ),
          Positioned(
            top: 350.0,
            left: 60.0,
            child: Container(
              width: 300,
              height: 100,
              child: ButtonNomUser(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Entrernom()),);

                  print("HELL YEAH");
                },
              ),
            ),
          ),
          Positioned(
            top: 440.00,
            left : 50.00,
            right: 50.00,
            child: Buttonmdp(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ecriremdp()),);
                print("HELL YEAH");
              },
            ),
          ),

],
          ),

          );

  }
}


