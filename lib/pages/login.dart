import 'package:flutter/material.dart';
import 'package:newtask/data/userdata.dart';
import 'package:newtask/pages/homepage.dart';
import 'package:newtask/pages/regsitration.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginPage extends StatelessWidget {
  loginPage({super.key});

  userData data = userData();
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  bool? signIn(){
    if(data.email == emailcontroller.text && data.password == passwordController.text){  
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page"), centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            TextField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                labelText: "Enter email:",
                border: OutlineInputBorder()
              ),
            ),
        
            const SizedBox(height: 20,),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: "Enter password:",
                border: OutlineInputBorder()
              ),
            ),
      
            const SizedBox(height: 20,),
        
            MaterialButton(onPressed: (){
              if(signIn() == true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return const homePage();
              }));
              }
              else{
                const Text("Wrong Credentials");
              }
            }, child: const Text("Sign In"),),

            const SizedBox(height: 20,),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [

              const Text("New User?",style: TextStyle(fontWeight: FontWeight.bold),),

              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return registrationPage();
                }));
              }, child: const Text("Register Here",style: TextStyle(color: Colors.blue),))
            ],
            ),
          ],
        ),
      ),
    );
  }
}