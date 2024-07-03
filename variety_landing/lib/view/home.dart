import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class Home extends StatefulWidget {
  final title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  void _sendEmail() {
    try {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'admin@varietydating.net',
        queryParameters: {'subject': 'Support', 'body': ""},
      );
      url.launchUrl(emailLaunchUri);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset(
                      'lib/assets/images/heart.png',
                      fit: BoxFit.fill,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                const Text(
                  "Home",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    _sendEmail();
                  },
                  child: const Text(
                    "Contact",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  color: Colors.white,
                ))
              ],
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(height: 150),
                SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      'lib/assets/images/heart.png',
                      fit: BoxFit.fill,
                    )),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      'Free Dating',
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      'For Singles Worldwide',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 400,
                      child: Text(
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        'Variety is a totally free dating app for singles. You can search millions of members and communicate with them totally free. A credit card is never needed!',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 65,
                          width: 210,
                          child: Image.asset(
                            'lib/assets/images/appstorenew.png',
                            fit: BoxFit.fill,
                          )),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                          height: 100,
                          width: 250,
                          child: Image.asset(
                            'lib/assets/images/googleplaynew.png',
                            fit: BoxFit.fill,
                          )),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 150,
            ),
            Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 800,
                      width: 400,
                      child: Material(
                        elevation: 10,
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 800,
                              width: 400,
                              child: Image.asset(
                                'lib/assets/images/blankphone.jpg',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                              child: SizedBox(
                                height: 715,
                                width: 360,
                                child: Image.asset(
                                  'lib/assets/images/nearby.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: const Text(
        "© Variety Dating 2024",
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
    );
  }
}
