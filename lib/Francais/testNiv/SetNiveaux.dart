import 'package:flutter/material.dart';
import '../ScoreFr.dart';
import 'TestFr.dart';

void setNiv(TestFr t,ScoreFr s){
  s.testFait=true ;
    s.niv1=0;
   if (t.q1&&t.q2) {
      s.niv2 = 0;
      if (t.q3) {
        s.niv3 = 0;
      }
    }


}