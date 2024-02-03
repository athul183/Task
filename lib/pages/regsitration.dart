import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newtask/data/serviceclass.dart';
import 'package:newtask/data/userdata.dart';
import 'package:newtask/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registrationPage extends StatelessWidget {
  registrationPage({super.key});

  final emailregistercontroller = TextEditingController();
  final passwordregistercontroller = TextEditingController();
  final confirmpasswordregistercontroller = TextEditingController();

  bool ?register(){

    userData().email.add(emailregistercontroller.text);
    if(passwordregistercontroller.text==confirmpasswordregistercontroller.text){

      userData().password.add(passwordregistercontroller.text);
      return true;
    }
    else{
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Registration Page"),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailregistercontroller,
              decoration: const InputDecoration(
                labelText: "Enter email:",
                border: OutlineInputBorder()
              ),
            ),
        
            const SizedBox(height: 20,),
            TextField(
              controller: passwordregistercontroller,
              decoration: const InputDecoration(
                labelText: "Enter password:",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: confirmpasswordregistercontroller,
              decoration: const InputDecoration(
                
                labelText: "Confirm password:",
                
                border: OutlineInputBorder()
              ),
            ),
        
            const SizedBox(height: 20,),
        
            MaterialButton(onPressed: (){
              if(register() == true){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return loginPage();
                }));
              }
            }, child: const Text("Sign Up"),),

            const SizedBox(height: 20,),

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