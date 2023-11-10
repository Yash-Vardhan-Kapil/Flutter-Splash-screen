import 'package:flutter/material.dart';
import 'splashscreen.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => homescreenState();
}

class homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Splash screen App',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(//pushReplacement to completely remove previous screen
                      MaterialPageRoute(builder: (builder) => const splashscreen()));
                },
                child: const Text('click here')),
            const Text('Click to see splash screen'),
          ],
        ),
      ),
    );
  }
}
