


import 'package:flutter/material.dart';
import 'package:flutter_cosas/src/pages/alert_page.dart';
import 'package:flutter_cosas/src/pages/animated_container.dart';
import 'package:flutter_cosas/src/pages/avater_page.dart';
import 'package:flutter_cosas/src/pages/card_page.dart';
import 'package:flutter_cosas/src/pages/home_page.dart';
import 'package:flutter_cosas/src/pages/input_page.dart';
import 'package:flutter_cosas/src/pages/listview_page.dart';
import 'package:flutter_cosas/src/pages/slider_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){


      return <String, WidgetBuilder>{
        '/'                 : (BuildContext context) => HomePage(),
        'alert'             : (BuildContext context) => AlertPage(),
        'avatar'            : (BuildContext context) => AvatarPage(),
        'card'              : (BuildContext context) => CardPage(),
        'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
        'inputs'            : (BuildContext context) => InputPage(),
        'slider'            : (BuildContext context) => SliderPage(),
        'list'              : (BuildContext context) => ListaPage(),
      };

}