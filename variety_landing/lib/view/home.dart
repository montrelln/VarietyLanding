import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;
import 'package:variety_landing/view/policy.dart';

class Home extends StatefulWidget {
  final title;
  const Home({super.key, required this.title});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  bool adjustForPhone = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateNeedsAdjustmentForPhone(context));
  }

  void _sendEmail() {
    try {
      final Uri emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'admin@varietydating.net',
        queryParameters: {'subject': 'Support', 'body': ""},
      );
      url.launchUrl(emailLaunchUri);
    } catch (e) {}
  }

  void updateNeedsAdjustmentForPhone(context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 1000) {
      setState(() {
        adjustForPhone = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
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
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => const Policy()));
                },
                child: const Text(
                  "Policy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
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
    );

    var appStoreColumn = Column(
      children: [
        SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(
              'lib/assets/images/heart.png',
              fit: BoxFit.fill,
            )),
        adjustForPhone == true
            ? const SizedBox(height: 20)
            : const SizedBox(height: 30),
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
        adjustForPhone == true
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    'For Singles ',
                  ),
                  Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                    'Worldwide',
                  ),
                ],
              )
            : const Row(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            adjustForPhone == true
                ? const SizedBox(
                    width: 300,
                    child: Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                      'Variety is a totally free dating app for singles. You can search millions of members and communicate with them totally free. A credit card is never needed!',
                    ),
                  )
                : const SizedBox(
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
        adjustForPhone == true
            ? Column(
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
            : Row(
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
    );

    var iphoneImageColumn = Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 800,
                  width: adjustForPhone == true ? 300 : 400,
                  child: Image.asset(
                    'lib/assets/images/blankphone.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 50, 0, 0),
                  child: SizedBox(
                    height: 700,
                    width: adjustForPhone == true ? 225 : 320,
                    child: Image.asset(
                      'lib/assets/images/nearby.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );

    var layoutWeb = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        appStoreColumn,
        const SizedBox(
          width: 100,
        ),
        iphoneImageColumn
      ],
    );

    var layoutPhone = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[appStoreColumn, iphoneImageColumn],
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: adjustForPhone == true ? layoutPhone : layoutWeb),
      ),
      bottomNavigationBar: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 30, 10),
            child: Text(
              "© Variety Dating 2024",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
