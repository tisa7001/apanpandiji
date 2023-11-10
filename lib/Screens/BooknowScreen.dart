import 'package:apanpandiji/Screens/UpiPaymentScreen.dart';
import 'package:flutter/material.dart';
import 'package:upi_india/upi_india.dart';
import 'package:url_launcher/url_launcher.dart';

class BooknowScreen extends StatelessWidget {
  final String? data;
  const BooknowScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final String data1 = ModalRoute.of(context)?.settings.arguments as String;
    final Uri phone = Uri.parse('tel:+917091549827');
    final Uri whatsapp = Uri.parse('https://wa.me/7091549827?text=Har Har Mahadev Pujakarm Team !!\n Need help on this :');
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        title: Text('Book Now'),
        backgroundColor: Colors.orangeAccent.shade700,
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [

          Card(
            color: Colors.orangeAccent.shade400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text(data1,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white)),
                // Text(
                //     '   We offer Griha Prabesh puja services to ensure that your new home is free from negative energies and filled with blessings  '),
                SizedBox(height: 10)
              ],
            ),
          ),
          GestureDetector(
            onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => UpiPaymentScreen())),
            child: const Card(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text('Book with payment',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  // Text(
                  //     '    We provide Satyanarayan puja services to bring good fortune, happiness, and prosperity into your life.',
                  //     style: TextStyle()),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {launchUrl(phone)},
            child: const Card(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text('Book on Call',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  // Text(
                  //     '    We offer Kali puja services to ward off evil and negative energies from your life.'),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => {launchUrl(whatsapp)},
            child: const Card(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text('Need Help ?',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  // Text(
                  //     '    We offer Kali puja services to ward off evil and negative energies from your life.'),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
//
//   List<UpiApp>? apps;
//   UpiIndia _upiIndia = UpiIndia();
//   //UpiApp app = UpiApp.googlePay;
//   @override
//   void initState() {
//     _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
//       setState(() {
//         apps = value;
//       });
//     }).catchError((e) {
//       apps = [];
//     });
//     super.initState();
//   }
//
// _makepayment() async {
//
//   initiateTransaction(app);
//   final res =  await EasyUpiPaymentPlatform.instance.startPayment(
//   const EasyUpiPaymentModel(
//   payeeVpa: '7091549827@barodampay',
//   payeeName: 'Sachin Tiwari',
//   amount: 10.0,
//   description: 'Testing payment',
//   ),
//   );
//
//   print(res);
//
// }
//
// Future<UpiResponse> initiateTransaction(UpiApp app) async {
//   return _upiIndia.startTransaction(
//     app: app,
//     receiverUpiId: "9078600498@ybl",
//     receiverName: 'Md Azharuddin',
//     transactionRefId: 'TestingUpiIndiaPlugin',
//     transactionNote: 'Not actual. Just an example.',
//     amount: 1.00,
//   );
// }

}
