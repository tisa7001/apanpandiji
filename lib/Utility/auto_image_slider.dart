import 'package:apanpandiji/Screens/BookingScreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_card/image_card.dart';
import '../Screens/BooknowScreen.dart';
import 'cardslider.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final myitems = [
    Image.asset(
      'assets/images/new-banner-1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset('assets/images/hawan1.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/hawan2.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/hawan3.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/panchshul.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/baidhnathdham.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/babadhamlinga.jpg', fit: BoxFit.fill),
    Image.asset('assets/images/AmanPathak.jpg', fit: BoxFit.fill)
  ];
  final Uri phone = Uri.parse('tel:+917091549827');
  final Uri whatsapp = Uri.parse('https://wa.me/7091549827');
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent.shade100,
        appBar: AppBar(
          title: const Text('Welcome to Pujakarm'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () => {launchUrl(phone)},
                icon: const Icon(Icons.call)),
          ],
          elevation: 3,
          backgroundColor: Colors.orangeAccent.shade400,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Colors.grey.shade200,
                  activeDotColor: Colors.grey.shade900,
                  paintStyle: PaintingStyle.fill,
                ),
              ),
              const HomeDescriptions(),
            ],
          ),
        ));
  }
}

class HomeDescriptions extends StatelessWidget {
  const HomeDescriptions({super.key});

  get onPressed => null;

  get child => null;

  get inputData => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), //You can use EdgeInsets like above
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.yellowAccent.shade700, Colors.orangeAccent.shade700],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        stops: const [0.4, 0.7],
        tileMode: TileMode.repeated,
      )),
      child: Column(
        children: [
          const Text(
            "We are an online booking platform for priests to perform different types of puja. Click here to schedule an appointment with our priests and get your puja done in a hassle-free manner.",
          ),
          const SizedBox(width: 20),
          TextButton(
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
          const SizedBox(width: 10),
          const TransparentImageCard(
            contentPadding: EdgeInsets.only(top: 20,left: 25,right: 5),
            width: 200,
              height: 220,
            imageProvider: AssetImage('assets/images/pujakarmlogo.png'),
            // tags: [ _tag('Product', () {}), ],
            endColor: Colors.amber,
            title:
                Text('Consult Online :', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18)),
            description: Text('Connect Online with Pujakarm team ...',style: TextStyle(color: Colors.white70)),
            footer: Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.call),
                SizedBox(width: 10),
                Icon(Icons.video_call),
              ],
            ),

          )
          // const FillImageCard(
          //   width: 200,
          //   heightImage: 200,
          //   imageProvider: AssetImage('assets/images/logo100.png'),
          //   footer: Icon(Icons.video_call),
          //   // tags: [_tag('Category', () {}), _tag('Product', () {})],
          //   title: Text('Consult Online'),
          //   description: Text('Connect Online with Pujakarm team and get advise'),
          // ),
          // const Cardslider(),
        ],
      ),
    );
  }
}
