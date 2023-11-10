import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

import 'BooknowScreen.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  get onPressed => null;

  get child => null;

  get inputData => null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        title: const Text('Booking'),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.orangeAccent.shade400,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left:10,right:10 ),

        children:  [
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: const AssetImage('assets/images/Mrityunjay.jpeg'),

            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: const Text('MAHA MRITYUNJAY JAAP',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
            const Text('The Maha Mrityunjaya Jaap is an ancient mantra dedicated to Lord Shiva. It is believed to have been chanted for centuries to promote healing, protection, and spiritual growth. The mantra is derived from the Rig Veda and is regarded as one of the most powerful Shiva mantras. It is made up of three Hindi words: “Maha,” which means wonderful, “Mrityun,” which means death, and “Jaya,” which means victory, resulting in victory over death. The chanting of this mantra is believed to cure diseases, provide protection, promote spiritual growth, and grant immortality. It also eliminates fears and promotes holistic healing.'),
            footer:  TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 20,
                    foregroundColor: Colors.white70),
                onPressed: () {
                  String  inputData = 'MAHA MRITYUNJAY JAAP';
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  BooknowScreen(data:inputData ),
                          settings: RouteSettings(arguments: inputData),
                      ));
                },
                child: const Text('Book Now',
                    style: TextStyle(color: Colors.white70))),
          ),

          const SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: const AssetImage('assets/images/Mrityunjay.jpeg'),
            footer:  TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 20,
                    foregroundColor: Colors.white70),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  BooknowScreen(data: inputData)));
                },
                child: const Text('Book Now',
                    style: TextStyle(color: Colors.white70))),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: const Text('MAHA MRITYUNJAY JAAP',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
            const Text('The Maha Mrityunjaya Jaap is an ancient mantra dedicated to Lord Shiva. It is believed to have been chanted for centuries to promote healing, protection, and spiritual growth. The mantra is derived from the Rig Veda and is regarded as one of the most powerful Shiva mantras. It is made up of three Hindi words: “Maha,” which means wonderful, “Mrityun,” which means death, and “Jaya,” which means victory, resulting in victory over death. The chanting of this mantra is believed to cure diseases, provide protection, promote spiritual growth, and grant immortality. It also eliminates fears and promotes holistic healing.'),
          ),
          const SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: const AssetImage('assets/images/Mrityunjay.jpeg'),
            footer:  TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 20,
                    foregroundColor: Colors.white70),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  BooknowScreen(data: inputData)));
                },
                child: const Text('Book Now',
                    style: TextStyle(color: Colors.white70))),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: const Text('MAHA MRITYUNJAY JAAP',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
            const Text('The Maha Mrityunjaya Jaap is an ancient mantra dedicated to Lord Shiva. It is believed to have been chanted for centuries to promote healing, protection, and spiritual growth. The mantra is derived from the Rig Veda and is regarded as one of the most powerful Shiva mantras. It is made up of three Hindi words: “Maha,” which means wonderful, “Mrityun,” which means death, and “Jaya,” which means victory, resulting in victory over death. The chanting of this mantra is believed to cure diseases, provide protection, promote spiritual growth, and grant immortality. It also eliminates fears and promotes holistic healing.'),
          ),
          const SizedBox(height: 10),
          FillImageCard(
            color: Colors.amberAccent,
            width: 400,
            heightImage: 400,
            imageProvider: const AssetImage('assets/images/Mrityunjay.jpeg'),
            footer:  TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    elevation: 20,
                    foregroundColor: Colors.white70),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  BooknowScreen(data: inputData)));
                },
                child: const Text('Book Now',
                    style: TextStyle(color: Colors.white70))),
            // tags: [_tag('Category', () {}), _tag('Product', () {})],
            title: const Text('MAHA MRITYUNJAY JAAP',style: TextStyle(fontWeight: FontWeight.bold)),
            description:
            const Text('The Maha Mrityunjaya Jaap is an ancient mantra dedicated to Lord Shiva. It is believed to have been chanted for centuries to promote healing, protection, and spiritual growth. The mantra is derived from the Rig Veda and is regarded as one of the most powerful Shiva mantras. It is made up of three Hindi words: “Maha,” which means wonderful, “Mrityun,” which means death, and “Jaya,” which means victory, resulting in victory over death. The chanting of this mantra is believed to cure diseases, provide protection, promote spiritual growth, and grant immortality. It also eliminates fears and promotes holistic healing.'),
          ),
          const SizedBox(height: 10),

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
