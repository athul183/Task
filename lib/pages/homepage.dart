import 'package:flutter/material.dart';
import 'package:newtask/data/serviceclass.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              MaterialButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const getData();            
                }));
              } ,child: const Text("Get API DATA"),),
          ],
        ),
      ),
    );
  }
}