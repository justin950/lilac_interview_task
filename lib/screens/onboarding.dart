import 'package:flutter/material.dart';
import 'package:lilac_interview_test/screens/homescreen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Column(
        children: [
          Expanded(
            flex: 6,
            child: ClipRect(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(color: Colors.white),

                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white10,
                        width: 1
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 320,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 1
                      )
                    ),
                  ),

                  Image.asset('assets/images/Group 1.png',
                  fit: BoxFit.contain,
                  width: 200,)

                ],
              ),
            )
          ),

          Expanded(
            flex: 6,
            child: Padding(padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24
            ),

            child: Column(
              children: [
                Text('Spend smarter\n Save more',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF468E88),
                  height: 1.1,
                ),),

                SizedBox(height: 28,),

                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF59A69F),
                    foregroundColor: Colors.white,
                    elevation: 10,
                    shadowColor: Color(0x6659A69F),
                    shape: StadiumBorder(),

                  ),
                  child: Text('Get Started',
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),),
                   ),
                )
              ],
            ),
            
            ),),
        ],
      )),
    );
  }
}