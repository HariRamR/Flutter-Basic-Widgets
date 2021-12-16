import 'dart:ui' as ui;

import 'package:GamingArena/colors/custom_colors.dart';
import 'package:GamingArena/pages/work_sheet.dart';
import 'package:flutter/material.dart';

class ArenaDashboard extends StatefulWidget {
  const ArenaDashboard({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ArenaDashboard> createState() => ArenaDashboardState();
}

class ArenaDashboardState extends State<ArenaDashboard> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  final List gridImgList = [
    'assets/images/fortnite.jpg',
    'assets/images/cod_dashboard.jpg',
    'assets/images/dark_siders_dashboard.jpg',
    'assets/images/dishonored_dashboard.jpg',
    'assets/images/fh_dashboard.jpg',
    'assets/images/Gears_ow_dashboard.jpg',
    'assets/images/god_of_war_dashboard.jpg',
    'assets/images/rl_dashboard.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: globalKey,
      body: Stack(
        children: <Widget>[
          // Image.asset('assets/images/dashboard_bg.jpg', fit: BoxFit.cover),
          /*ColorFiltered(
            colorFilter:
            const ColorFilter.mode(
                Palette.dashboardOverlayColor, BlendMode.srcOver),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/dashboard_bg.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),*/
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/dashboard_bg.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0x800c224b),
                  Color(0xcc0c224b),
                ],
                begin: Alignment.topRight,
                end: Alignment.topCenter,
                stops: [
                  0.5,
                  1.0,
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8, top: 40, right: 8, bottom: 8),
                child: Row(
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/hamburger_icon.png'),
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Navigation Drawer'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(widget.title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.center),
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_none_rounded,
                          color: Colors.white),
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Notifications'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(

                // Card(
                // color: const Color(0x99152a57),
                // elevation: 5,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Palette.searchOverlayColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Palette.veryLightBlue, width: 1),
                ),
                /*shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),*/
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: const Icon(Icons.search_rounded,
                              color: Colors.white),
                          onPressed: () {}),
                      const Expanded(
                          child: Text(
                            'Search Games...',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontFamily: 'Lexend',
                                fontWeight: FontWeight.w400),
                          ),
                          flex: 1),
                      IconButton(
                        icon: Image.asset(
                          'assets/images/filter_icon.png',
                          height: 20,
                          width: 20,
                          color: Palette.lightBlue,
                        ),
                        // color: const Color(0xFF5db5f5),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (_, index) => gridListItem(
                    gridImgList[index],
                  ),
                  itemCount: gridImgList.length,
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: SizedBox(
              width: screenSize.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(screenSize.width, 80),
                    painter: CustomPainterBottomNav(),
                  ),
                  // Positioned(
                  //   bottom: 10,
                  //   left: 0,
                  //   right: 0,
                  //   child:
                  Stack(
                    fit: StackFit.expand,
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Positioned(
                        left: screenSize.width * 0.05,
                        top: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/controller.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenSize.width * 0.25,
                        top: 15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/rocket.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenSize.width * 0.44,
                        top: 5,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/bag.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenSize.width * 0.63,
                        top: 15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/heart.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenSize.width * 0.82,
                        top: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/images/chat.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget gridListItem(String imgName) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(image: AssetImage(imgName), fit: BoxFit.cover),
        ),
        margin: const EdgeInsets.all(8),
      ),
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WorkSheet()));
      },
    );
  }
}

class CustomPainterBottomNav extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ui.Gradient.linear(
        const Offset(0.0, 0.0),
        const Offset(0.0, 80),
        [
          Palette.dashboardOverlayColor,
          Palette.kToDark,
          Palette.kToDark,
        ],
        [
          0.0,
          0.75,
          1.0,
        ],
      );

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Palette.lightBlue, 15, true);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
  return false;
}
