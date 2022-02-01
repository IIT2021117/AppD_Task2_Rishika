import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String heads = "Heads";
String tails = "Tails";
bool a = true;
String HeadImg = "images/headimg.jpg";
String TailImg = "images/tailimg.jpg";
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "Turn the coin",
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Turn the Coin"),
          ),
          body: Column(
            children: [
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 160),
                      Text(a? heads : tails, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 30),
                      Image.asset(
                        a ? HeadImg: TailImg,
                        width: 250,
                        height: 250,
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                          onPressed: () {
                            a = !a;
                            setState(() {});
                          },
                          child: const Text("Turn", style: TextStyle(fontSize: 30)))
                    ],
                  )),
            ],
          ),
        ));
  }
}
