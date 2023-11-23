import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  String result = "";

  TextEditingController inputbd = TextEditingController();

 covertor(String numbd){
    List<String> english = ['1','2','3','4','5','6','7','8','9','0'];
    List<String> bangla = ['১','২','৩','৪','৫','৬','৭','৮','৯','০'];

    for(int a = 0; a <bangla.length; a++ ){
      var replece = numbd.replaceAll(english[a], bangla[a]);
      numbd = replece;
    }
    setState(() {
      result = numbd;
    });

      return numbd;

  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Center(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: inputbd,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                onPressed: () {
                  covertor("২");
                },
                child: Text(
                  "২",
                  style: TextStyle(color: Colors.white),
                )),

          ],
        ),
      )),
    );
  }
}
