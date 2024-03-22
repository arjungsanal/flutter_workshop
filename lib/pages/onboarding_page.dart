import 'package:flutter/material.dart';
import 'package:flutter_workshop/pages/login_page.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            LiquidSwipe(
              slideIconWidget: Icon(Icons.arrow_back_ios),
              enableSideReveal: true,     
              pages: [
                Container(
                  color: Colors.deepPurple,
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [  
                      Image.asset('lib/assets/splash.png' ,
                      ),
                      SizedBox(height: 80,),
                      ElevatedButton(onPressed: (){}, child: Text("Swipe to Explore"))
                    ], 
                  ),
                ),
                Container( 
                  color: Colors.amber,
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('lib/assets/onboard/1.png',
                      ),
                       SizedBox(height: 100,),
                      ElevatedButton(onPressed: (){}, child: Text("Swipe to Explore"))
                    ],
                  ),
                ),
                Container(
                  color: Colors.deepOrange,
                  child: Column(
                    children: [
                         Image.asset('lib/assets/onboard/3.png',   
                      ),
                       SizedBox(height: 100,),

                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: Text("Login Screen")),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
