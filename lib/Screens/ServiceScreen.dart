import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class ServiceScreen extends StatelessWidget{
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.orangeAccent.shade100,
    appBar: AppBar(
    title: const Text('Services'),
    centerTitle: true,
    elevation: 5,
    backgroundColor: Colors.orangeAccent.shade400,
    ),
    body: ListView(
    padding: const EdgeInsets.all(0),
    children: const [
        Card(
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text('GRIHA PRABESH PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('   We offer Griha Prabesh puja services to ensure that your new home is free from negative energies and filled with blessings  '),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('SATYANARAYAN PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We provide Satyanarayan puja services to bring good fortune, happiness, and prosperity into your life.',
                  style:TextStyle()),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('KALI PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We offer Kali puja services to ward off evil and negative energies from your life.'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('HANUMAN CHALISA/SUNDAR KAND PATH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We provide Hanuman Chalisa path services to help you overcome obstacles and achieve success in your life'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('GANESH PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We perform Ganesh puja to remove obstacles from your life and help you achieve success in your endeavors'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('DURGA PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We conduct Durga puja to seek the blessings of the divine mother and protect you from harm'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('SHIVA PUJA',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We offer Shiva puja services to seek the blessings of Lord Shiva and attain spiritual growth'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('NAVRATRI CHANDI PATH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We provide navaratri and chandi path  services to bring good fortune, happiness, and prosperity into your life.'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('KAALSARP DOSH MUKT',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We offer  puja services to ensure that your new home is free from negative energies and filled with blessings'),
              SizedBox(height: 10)
            ],
          ),
        ),
        Card(
        child:
          Column(
            children: [
              SizedBox(height: 10),
              Text('MAHAMRITYUNJAY JAAP',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
              Text('    We provide Mahamrityunjay puja services to bring good fortune, happiness, and prosperity into your life.'),
              SizedBox(height: 10)
            ],
          ),
        ),


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
