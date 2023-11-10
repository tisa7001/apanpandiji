import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../Utility/cardslider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> images = [
      Container(
        child: const Column(
          children: [
            TransparentImageCard(
              width: 400,
              height: 200,
              imageProvider: AssetImage('assets/images/SanjayPathak.jpg'),
            ),
            Text("ufyyyyyyyyyyyyyyyyyyy erb reb")
          ],
        ),
      ),
      Container(
        child: const Column(
          children: [
            TransparentImageCard(
              width: 400,
              height: 200,
              imageProvider: AssetImage('assets/images/SanjayPathak.jpg'),
            ),
            Text("ufyyyyyyyyyyyyyyyyyyy erb reb")
          ],
        ),
      ),
      Container(
        child: const Column(
          children: [
            TransparentImageCard(
              width: 400,
              height: 200,
              imageProvider: AssetImage('assets/images/SanjayPathak.jpg'),
            ),
            Text("ufyyyyyyyyyyyyyyyyyyy erb reb")
          ],
        ),
      ),
      Container(
        child: const Column(
          children: [
            TransparentImageCard(
              width: 400,
              height: 200,
              imageProvider: AssetImage('assets/images/SanjayPathak.jpg'),
            ),
            Text("ufyyyyyyyyyyyyyyyyyyy erb reb")
          ],
        ),
      ),
    ];
    final List<String> titles = [
      "Dr Sanjay Pathak",
      "Pt. Sri Aman Kumar Pathak",
      "Pt. Shri Rajiv Ranjan",
      "Pt. Prem Prakash Choubey",
    ];
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        title: const Text('Meet the Panditji'),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.orangeAccent.shade400,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left:10,right:10 ),

        children: const [
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: AssetImage('assets/images/SanjayPathak.jpg'),
            // footer: Icon(Icons.video_call),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: Text('Dr Sanjay Pathak',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
                Text('Lecturer (Sanskrit Departments) \nA N College Dumka Details: Specialist in Rudrabhishek, Chanting, Recitation, Chandi Path, Astrologer, Yagya ritual karma'),
          ),
          SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: AssetImage('assets/images/PanditAmanPathak.jpg'),
            // footer: Icon(Icons.video_call),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: Text('Pt Aman Kumar Pathak',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
                Text('B.Sc. (Mathematics)\nDetails: Astrologer--Architect, Grihpravesh, Marriage, Navagraha Shanti and Mahamrityunjay Jaap'),
          ),
          SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: AssetImage('assets/images/Rajiv.jpg'),
            // footer: Icon(Icons.video_call),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: Text('Pt. Shri Rajiv Ranjan',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
                Text('Post Graduate (S.A.)\nDetails : Astrologer--Architect, Kalsarpa Dosh Shanti, Upnayana, Marriage, Griha Pravesh and all types of Yajyadi rituals.'),
          ),
          SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: AssetImage('assets/images/Prakash.jpg'),
            // footer: Icon(Icons.video_call),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: Text("Pt. Prem Prakash Choubey",style: TextStyle(fontWeight: FontWeight.bold)),
            description:
                Text('Details: Consultant, Coordinator'),
          ),
          SizedBox(height: 10),

        ],
      ),
      // body: SafeArea(
      //   child: Expanded(
      //     child: Container(
      //       child: VerticalCardPager(
      //         textStyle:
      //             const TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.normal),
      //         // titles: titles,
      //          titles: titles,
      //         images: images,
      //         onPageChanged: (page) {},
      //         align: ALIGN.CENTER,
      //         onSelectedItem: (index) {},
      //       ),
      //     ),
      //   ),
      // ),

      // children: [
      //  ,
      //   //  FillImageCard(
      //   //   width: 200,
      //   //   heightImage: 200,
      //   //   imageProvider: AssetImage('assets/images/logo100.png'),
      //   //   footer: Icon(Icons.video_call),
      //   //   // tags: [_tag('Category', () {}), _tag('Product', () {})],
      //   //   title: Text('Consult Online'),
      //   //   description: Text('Connect Online with Pujakarm team and get advise'),
      //   // ),
      //
      // ]
    );
  }
}
