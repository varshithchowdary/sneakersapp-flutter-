import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[300] ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/img.png',
                  height: 240,
                ),
              ),
              const SizedBox(height: 25),
              //title
             const Text(
                  'Just Do it',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30,
               ),
              ),

              //sub title
              const Text(
                'Brand new sneakers and custom kicks made with precision with kickass style',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25,),
              // shop now button
              GestureDetector(
                onTap: () =>Navigator.push(context,MaterialPageRoute(
                  builder: (context) =>const HomePage(),
                ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                          'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
