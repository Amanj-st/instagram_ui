import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/widget/appbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, String>> data = [
    {"name": "amanj", "image": "7.jpeg"},
    {"name": "zhela", "image": "2.jpg"},
    {"name": "zhanw", "image": "3.jpeg"},
    {"name": "shene", "image": "4.jpg"},
    {"name": "laz"  , "image": "5.jpeg"},
    {"name": "banw" , "image": "6.jpeg"},
    {"name": "ahmad", "image": "7.jpeg"},
  ];
  List<Map<String, String>> post = [
    {"title": "you asked for comments on the new proposals","name": "amanj", "image": "1.png","person":"1.jpeg"},
    {"title": "the company would not comment on the venture", "name": "zhanw","image": "2.jpg","person":"2.jpg"},
    {"title": "I'll make a note in my diary", "name": "zhela","image": "3.jpeg","person":"3.jpeg"},
    {"title": "he noted down her address on a piece of paper","name": "laz", "image": "4.jpeg","person":"4.jpg"},
    {"titlw": " a record or outline of a speech, statement, testimony,","name": "ahmad", "image": "5.jpeg","person":"5.jpeg"},

  ];
@override
Widget build(BuildContext context) {
  return Scaffold(
  
    appBar: myAppBar(),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 100,
    child: ListView.separated(
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) {
        return  Column(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              ),
              height: 75,width: 75,
              child:   CircleAvatar(
   backgroundImage: const AssetImage("assets/color/color.jpeg"),
           child: SizedBox(height: 70,width: 70,
           child: CircleAvatar(
            backgroundImage: AssetImage(
              "assets/${data[index]["image"]}"
            ),
           ),
           ),
            ),

          ),
          Text("${data[index]["name"]}")
        ],);
      },
      itemBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 10);
      },
    ),
    ),
Expanded( 
  child:ListView.builder(
    itemCount: data.length,
    itemBuilder: (context,i){
      return  Column(
        children: [
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
                SvgPicture.asset("assets/color/dot.svg"),
                Row(children: [
                  Text("${post[i]["name"]}"),
                  SizedBox(width: 10,),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/${post[i]["person"]}"),
                  )
                ],)
          ],),
          ),
        Image.asset("assets/post/${post[i]["image"]}",
        fit:BoxFit.cover
        ),
        Padding(padding: EdgeInsets.all(10),
       child:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
SvgPicture.asset("assets/svg/save.svg",height: 30,),
Row(children: [
  SvgPicture.asset("assets/svg/send.svg",height: 30,),
  SizedBox(width: 10,),
  SvgPicture.asset("assets/svg/messenger.svg",height: 30,),
    SizedBox(width: 10,),
  SvgPicture.asset("assets/svg/favorite.svg",height: 30,),
],)
        ],)
        )
        ],
      );
    }
  
  ) 

)
  ],
),
  );
}
}