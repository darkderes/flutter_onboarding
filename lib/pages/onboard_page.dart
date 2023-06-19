import 'package:flutter/material.dart';

import '../data/contents_onboard.dart';
import 'home_page.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State <OnboardingScreen> createState() =>  _OnboardingScreenState();
}

class  _OnboardingScreenState extends State <OnboardingScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          Colors.indigo[900]!,
          Colors.indigo[800]!,
          Colors.indigo[700]!,
          Colors.indigo[600]!,
          Colors.indigo[500]!,
          Colors.indigo[400]!,
          Colors.indigo[300]!,
          Colors.indigo[200]!,
          Colors.indigo[100]!,
          Colors.indigo[50]!,
           
        ]) ),
        child: Column(
          children: [
            Expanded(child: PageView.builder(
              controller: _pageController,
              itemCount: listOnboardContent.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
              return  SingleChildScrollView(
                child:Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                  children: [Image.asset(listOnboardContent[i].imagen),
                  const SizedBox(height: 20,),
                  Text(listOnboardContent[i].titulo, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20,),
                  Text(listOnboardContent[i].descripcion, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.justify,),
                  
                  ],
                ),
                ),
              );   
            }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(listOnboardContent.length, (index) => buildPage(index, context)),
            ),   
            Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.all(40),
              child: MaterialButton(onPressed: () async {
                if(currentIndex == listOnboardContent.length - 1) {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const HomePage()));
                }
                _pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.easeInOut);
              },
              color: Colors.indigo[900],
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(20)),
              child: Text(
                currentIndex == listOnboardContent.length - 1 ? "Continuar" : "Siguiente",
                style: const TextStyle(color: Color.fromARGB(255, 241, 240, 240), fontSize: 18),
              ),
              ),) ,
                
          ],
        ),
      ),
    );
  }
  Container buildPage(int index,BuildContext context) {
    return Container(
     
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == listOnboardContent.length - 1 ? Colors.red : Colors.green.withOpacity(0.5),
       
      ),
    );
  }
}