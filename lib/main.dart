import 'package:url_launcher/link.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
const String _url = 'https://LINKTR.EE/DHRUVBHARGAVA1';
// _launchURLApp() async {
//   const url = 'https://LINKTR.EE/DHRUVBHARGAVA1';
//   if (await canLaunch(url)) {
//     await launch(url, forceSafariVC: false, forceWebView: false);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        title:
        const Text('MedLo',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, )
        ),

      ),
      body: MedicineStory(),
    ),
  ));
}

class MedicineStory extends StatefulWidget {
  @override
  _MedicineStoryState createState() => _MedicineStoryState();
}

int imgnumber = 1;

void nextQuestion() {
  if (imgnumber < 7) {
    imgnumber++;
  }
}
//const String _url = 'https://flutter.dev';

void prevQuestion() {
  if (imgnumber > 1) {
    imgnumber = imgnumber - 1;
  }
}

void reset() {
  imgnumber = 0;
}

// _launchURLApp() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunch(url)) {
//     await launch(url, forceSafariVC: true, forceWebView: true);
//   } else {
//     throw 'Could not launch $url';
//   }
// }


class _MedicineStoryState extends State<MedicineStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: Image(image: AssetImage('images/imgnew$imgnumber.png')),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlueAccent,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          prevQuestion();
                        });
                      },
                      child: const Icon(Icons.arrow_back,color: Colors.black),
                    ),
                  ),
                  const Expanded(
                    flex: 7,
                    // child: Link(uri: Uri.parse('https://linktr.ee/DhruvBhargava1'),//https://linktr.ee/DhruvBhargava1
                    //     target: LinkTarget.defaultTarget,
                    //     builder: (context,followLink){
                    //       return ElevatedButton(onPressed: followLink, child: Image(image: AssetImage('images/imgb.png')),);
                    //     },
                    // ),
                    child: ElevatedButton(
                      onPressed: _launchURL,
                      child: Image(image: AssetImage('images/imgb.png')),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          nextQuestion();
                        });
                      },
                      child: const Icon(Icons.arrow_forward,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//etails about the upcoming QUERY_ALL_PACKAGES permission declaration

void _launchURL() async {
  if (!await launch(_url)) throw 'Could not launch $_url';
  forceWebView: true;
}
