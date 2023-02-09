import 'package:flutter/material.dart';
import 'package:noteapp/componets/customtextform.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formstate = GlobalKey();
  TextEditingController user_name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Form(
          key: formstate,
          child: Column(children:  [
          Image.asset("assets/images/profile.png",width: 200,height: 200,),
            CustTextFormSign(
           mycontroller: user_name,
           label: "user name"
           ),
            CustTextFormSign(
           mycontroller: password ,
            label: "passwoed"
           
           ),
      MaterialButton(
        color:Colors.blue ,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        onPressed: (){

          Navigator.of(context).pushReplacementNamed("home");
        },
        child: const Text("login"),
        ),
        Container(height: 15,),
        InkWell(child: const Text("signup"),
        onTap: (){
         Navigator.of(context).pushReplacementNamed("signup");

        },
        )
      
      
        ])),
        ],),
      )
    );
  }
}