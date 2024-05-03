import 'package:flutter/material.dart';
import '../models/constants.dart';
import 'home.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: myConstants.customGradient(),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 130,
              ),
              Image.asset(
                'assets/start.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Daily ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w400),
              ),
              const Text(
                'Weather',
                style: TextStyle(
                    color:Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "access to more detailed weather information, This could include descriptions of specific weather phenomena and can help you understand changes in weather conditions.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 12.0),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
                },
                child: Container(
                  height: 50,
                  width: size.width * 0.7,
                  decoration: BoxDecoration(
                    color: myConstants.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
