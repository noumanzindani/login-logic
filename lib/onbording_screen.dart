
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:realestate/splash_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // controller to keep track of which page we're on
  PageController _controller = PageController();

  //keep track of if we are on the last page or not

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(children: [
        PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    color: Colors.blue[900],
                    child: Center(
                      child: AnimatedTextKit(animatedTexts: [
                        TyperAnimatedText("Welcome to Real Estate",
                        speed: Duration(milliseconds: 60),
                            textStyle: TextStyle(
                                fontSize: MediaQuery.sizeOf(context).height*0.08,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                                 TyperAnimatedText("Your RealEstate Patner",
                                 speed: Duration(milliseconds: 60),
                            textStyle: TextStyle(
                                fontSize: MediaQuery.sizeOf(context).height*0.08,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                     
                      ]),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue[900],
                 child: Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Text("Be",style:  TextStyle(
                                    fontSize: MediaQuery.sizeOf(context).height*0.09,
                                    fontWeight: FontWeight.bold,),),
                                    SizedBox(width: 10,),
                          AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText("Healthy",
                            
                                 speed: Duration(milliseconds: 80),
                                textStyle: TextStyle(
                                    fontSize: MediaQuery.sizeOf(context).height*0.07,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TyperAnimatedText("Happy",
                            
                                 speed: Duration(milliseconds: 80),
                                textStyle: TextStyle(
                                    fontSize: MediaQuery.sizeOf(context).height*0.07,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TyperAnimatedText("Smart",
                            
                                 speed: Duration(milliseconds: 80),
                                textStyle: TextStyle(
                                    fontSize: MediaQuery.sizeOf(context).height*0.09,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                          ]),
                        ],
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue[900],
                 child: Center(
                      child: AnimatedTextKit(animatedTexts: [
                        RotateAnimatedText("Let's Get Started",
                        rotateOut: false,
                            textStyle: TextStyle(
                                fontSize: MediaQuery.sizeOf(context).height*0.1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      
                      ]),
                    )
                ),
              ),
            ]),
        Container(
            alignment:const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("Skip",
                        style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height*0.03,
                          color: Colors.white
                        ))),
                SmoothPageIndicator(
                  controller: _controller, count: 3,
                  effect:const SlideEffect(
                    dotColor: Colors.black38,
                    activeDotColor: Colors.white
                  ),),

                // next or done button
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return SplashScreen();
                          }));
                        },
                        child: Text("Done",
                        style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height*0.03,
                          color: Colors.white
                        )))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOutCubicEmphasized);
                        },
                        child: 
                        Text("Next",
                        style: TextStyle(
                          fontSize: MediaQuery.sizeOf(context).height*0.03,
                          color: Colors.white
                        ),))
              ],
            ))
      ]),
    );
  }
}
