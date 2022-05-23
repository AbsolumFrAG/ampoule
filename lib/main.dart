import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  isOn
                      ? Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Oxygen480-actions-help-hint.svg/480px-Oxygen480-actions-help-hint.svg.png")
                      : Image.network(
                          "https://th.bing.com/th/id/OIP.T-GBXcVOJS5kc6HGNWYUbAAAAA?pid=ImgDet&rs=1"),
                  ElevatedButton(
                    child: isOn
                        ? const Text("Interrupteur OFF")
                        : const Text("Interrupteur ON"),
                    onPressed: () {
                      setState(() {
                        isOn = !isOn;
                      });
                    },
                  )
                ],
              ),
            )));
  }
}
