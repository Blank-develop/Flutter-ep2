import 'package:app/main.dart';
import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return const RootPage();
                }),
              );
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            Image.asset('images/hacker.jpeg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
                width: double.infinity,
                child: const Center(
                  child: Text('This is a text',
                      style: TextStyle(color: Colors.white)),
                )),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                   backgroundColor: isSwitch ? Colors.green : Colors.blue,
                ),
                  onPressed: (){
                    debugPrint("Debugging");
                }, 
                child: const Text('Elevated Button')
                ),
                OutlinedButton(onPressed: (){debugPrint("Debugging");
                }, 
                child: const Text('Outlined Button')
                ),
                TextButton(onPressed: (){debugPrint("Debugging");
                }, 
                child: const Text('Text Button')
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    debugPrint('This is a row ');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                     Icon(
                      Icons.local_fire_department,
                      color: Colors.blue
                    ),
                    Text('Row Widget'),
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.blue
                    ),
                  ],),
                ),
                Switch(
                  value: isSwitch, 
                  onChanged: (bool newBool){
                    setState(() {
                      isSwitch = newBool;
                    });
                      
                  })
          ],
        ));
  }
}
