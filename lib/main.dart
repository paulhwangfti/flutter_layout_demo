import 'package:flutter/material.dart';
import 'package:flutter_layout_demo/components/button_section.dart';
import 'package:flutter_layout_demo/components/image_section.dart';
import 'package:flutter_layout_demo/components/text_section.dart';
import 'package:flutter_layout_demo/components/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /* Image Section */
              const ImageSection(image: 'images/lake.jpg'),
          
              /* Spacer */
              const SizedBox(height: 24),
          
              /* Title Section */
              const TitleSection(
                name: 'Oeschinen Lake Campground',
                location: 'Kandersteg, Switzerland',
              ),
          
              /* Spacer */
              const SizedBox(height: 24),
          
              /* Button Section */
              ButtonSection(
                callIconPressed: () => print('Call icon pressed'),
                routeIconPressed: () => print('Route icon pressed'),
                shareIconPressed: () => print('Share icon pressed'),
              ),
          
              /* Spacer */
              const SizedBox(height: 24),
          
              /* Text Section */
              const TextSection(
                  text:
                      "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."),
            ],
          ),
        ),
      ),
    );
  }
}
