import 'package:coffee/dashboard.dart';
import 'package:coffee/theme.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg.png'),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, left: 50, right: 50),
                  child: Text(
                    'Coffee so good, your taste buds will love it.',
                    textAlign: TextAlign.center,
                    style: TitleTextStyle,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
                  child: Text(
                    'The best grain, the finest roast, the powerful flavor.',
                    textAlign: TextAlign.center,
                    style: SubTextStyle
                    ),
                  ),
                ),
              Center(
                child: Container(
                  width: 300,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top:34.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)
                        )),
                        backgroundColor: MaterialStateProperty.all(Color(0xFFC67C4E)),

                      ),
                      onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Dashboard())
                          );
                      },
                      child: Text('Get Started',
                        style: ButtonTextStyle,

                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
