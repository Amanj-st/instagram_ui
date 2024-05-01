

import 'package:flutter/material.dart';




  SizedBox botomNavigationBar() {
    return const SizedBox(height: 55,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.person,size: 35,),
            Icon(Icons.play_arrow_rounded,size: 35,),
            Icon(Icons.add,size: 35,),
              Icon(Icons.search,size: 35,),
            Icon(Icons.home_filled,size: 35,),
          ]),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
