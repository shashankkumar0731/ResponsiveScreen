import 'package:flutter/material.dart';
import 'package:untitled2/responsive.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive Screen'),
        ),
        body: SafeArea(
            child: ResponsiveWidget(
              mobile: Column(
                children: [
                  buildBannerSlider(),
                  Expanded(child: buildIntroText(),),
                ],

              ),
              tab: Row(
                children: [
                  buildBannerSlider(),
                  SizedBox(width: 24),
                  Expanded(child: buildIntroText()),
                ],
              ), desktop: Row(
              children: [
                buildBannerSlider(),
                SizedBox(width: 24),
                Expanded(child: buildIntroText()),
              ],
            ),
            )));


    // ),

    // child: LayoutBuilder(
    //    builder: (context, constraints) {
    //      if (constraints.maxWidth < 768) {
    //        return Column(

    //          ],
    //        );
    //      } else {
    //        return Row(
    //          children: [
    //            buildBannerSlider(),
    //            SizedBox(width: 24),
    //            buildIntroText(),
    //          ],
    //        );
    //      }
    //    },
    //  ),
  }

    //);


  Widget buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.deepPurple, Colors.red]),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  Widget buildIntroText() {
    return Text(
      "A responsive screen, in the context of web and app design, refers to a design approach that allows a user interface to adapt and optimize its layout, content, and functionality based on the characteristics of the device or screen it is being displayed on.",
      style: TextStyle(fontSize: 21),
    );
  }
}
