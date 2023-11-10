import 'package:flutter/material.dart';

import '../Utility/auto_image_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            MyImageSlider()
        );
  }
}

class Whatsapp extends StatelessWidget{
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: Icon(Icons.badge)),
      floatingActionButton: Icon(Icons.call_end_rounded),
    );
  }

}


