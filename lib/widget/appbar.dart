import 'package:flutter/material.dart';
import 'package:instagram/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

  AppBar myAppBar() {
    return AppBar(
      title: SvgPicture.asset("assets/svg/instagram.svg",
      height: 32,),
   actions: const [SizedBox(width: 20,),
   Icon(Icons.messenger_outline_outlined),
   SizedBox(width: 20,),
   Icon(Icons.favorite_border_outlined)
   ],
    );
         
  }


  SizedBox botomNavigationBar() {
    return const SizedBox(
      height: 55,

  );}