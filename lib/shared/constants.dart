import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Color ss = Colors.green;
Color abyd = HexColor('#ffffff');
Color bfa = HexColor('#ffffff');
Color eswd = HexColor('#000000');
Color a5dr = HexColor('#4caf50');
Color nbete = HexColor('#852E2E');
Color azr2 = HexColor('#0016FF');
Color a7mr = HexColor('#FF0000');
Color rosasy = HexColor('#8C8C8C');
Color asfr = HexColor('#FFEB3B');
Color dhby = HexColor('#B68800');

bool zhor1= true;
bool zhor2= true;
bool zhor3= true;
bool zhor4= true;
bool zhor5= true;
bool zhor6= true;
bool zhor7= true;
bool zhor8= true;
bool zhor9= true;
bool zhor10= true;
bool zhor11= true;
bool zhor12= true;
bool zhor13= true;
bool zhor14= true;
bool zhor15= true;
bool zhor16= true;
bool zhor17= true;
bool zhor18= true;
bool zhor19= true;
bool zhor20= true;
bool zhor21= true;
bool zhor22= true;
bool zhor23= true;
bool zhor24= true;
bool zhor25= true;
bool zhor26= true;
bool zhor27= true;
bool zhor28= true;

List<int> undo = [];
List<int> redo = [];

var playerOneKey = GlobalKey<FormState>();
var playerTwoKey = GlobalKey<FormState>();
var playerOneController = TextEditingController();
var playerTwoController = TextEditingController();

List<GlobalKey<FormState>> keys1 = [];
List<GlobalKey<FormState>> keys2 = [];
List<TextEditingController> player1 = [];
List<TextEditingController> player2 = [];

int i = 0;

int x1 = 0;
int x2 = 0;
