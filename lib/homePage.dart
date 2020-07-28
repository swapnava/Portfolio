import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  List<Widget> _widgetOptions = <Widget>[
    WorkWidget(),
    HomeWidget(),
    ContactMe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        height: 60.0,
        backgroundColor: Colors.indigo[900],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.indigo[900],
            Colors.blue[900],
          ],
          stops: [0, 1],
        ),
        items: [
          TabItem(icon: Icons.code, title: 'My Works'),
          TabItem(icon: Icons.sentiment_satisfied, title: 'About Me'),
          TabItem(icon: Icons.message, title: 'Contact Me'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Container(
        child: _widgetOptions.elementAt(_currentIndex),
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlareActor(
          "assets/login_screen_bg.flr",
          alignment: Alignment.center,
          fit: BoxFit.fitHeight,
          animation: "after_success",
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Hi!',
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 36.0,
                    fontFamily: 'Kaushan'),
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Text(
                'I\'m Swapnava',
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 36.0,
                    fontFamily: 'Kaushan'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Text(
                '* Enthusiastic cross platform app developer using Flutter.'
                '\n* Pursuing graduation in the field of ECE.'
                '\n* Industrial exposure in China as a part of an Exchange Program.'
                '\n* I\'ve worked as an intern in Flutter development.',
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 13.0,
                    fontFamily: 'Heebo'),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Text(
                'Looking forward to learn and contribute more!',
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 16.0,
                    fontFamily: 'Kaushan'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ],
    );
  }
}

class WorkWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlareActor(
          "assets/login_screen_bg.flr",
          alignment: Alignment.center,
          fit: BoxFit.fitHeight,
          animation: "after_success",
        ),
        Container(
          color: Colors.black87,
          constraints: BoxConstraints.expand(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  FontAwesomeIcons.cloud,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Clima',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontFamily: 'Kaushan'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 5.0),
              child: Text(
                'A weather app to fetch location and weather data using API.'
                '\nThe user can not only get informed about the current location weather'
                ' but also search for the weather data of\nany city around the globe.\n'
                '\nFuture modifications- The Future modifications include 5-day forecast'
                ' and informing about precautionary measures in\ncase of natural calamity.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  FontAwesomeIcons.dumbbell,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'BMI Calculator',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontFamily: 'Kaushan'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 5.0),
              child: Text(
                'An app to calculate the body mass index. This ensures a healthy lifestyle.'
                '\nand maintain their daily life according to the value, which inturn'
                ' helps the individual to stay fit.\n'
                '\nFuture modifications- Diet chart menu shall be provided to maintain'
                ' the BMI. Few exercises will also be added as a feature.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  FontAwesomeIcons.userAlt,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Kabadi Techno Pvt Ltd',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontFamily: 'Kaushan'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 5.0),
              child: Text(
                'An app for the company. As an intern, I am responsible for designing an app'
                ' for the company. I am very proud to say that I have successfully delivered'
                ' my skills and have been constantly praised for my work, which makes me believe'
                ' in myself and on my skills.',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'There are a lot more projects that I\'ve done using Flutter and even with HTML, CSS and JavaScript',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              'Looking forward to more exciting works!',
              style: TextStyle(
                  color: Colors.white, fontSize: 18.0, fontFamily: 'Kaushan'),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlareActor(
          "assets/login_screen_bg.flr",
          alignment: Alignment.center,
          fit: BoxFit.fitHeight,
          animation: "after_success",
        ),
        Container(
          color: Colors.black87,
          constraints: BoxConstraints.expand(),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/pic.jpg'),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.0,
                ),
                Icon(
                  FontAwesomeIcons.mobile,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  '(+91) 8240708264',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Kaushan',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.0,
                ),
                Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'swapnavah@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Kaushan',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70.0,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'www.linkedin.com/in/',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Kaushan',
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 105.0,
                ),
                Text(
                  'swapnavahalder-6536a7188',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Kaushan',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              'It would be great to work and grow together!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Kaushan',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Happy Coding!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: 'Kaushan',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        )
      ],
    );
  }
}
