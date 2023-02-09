import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:noteapp/componets/crud.dart';
import 'package:noteapp/componets/customtextform.dart';
import 'package:noteapp/componets/linkapi.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formstate = GlobalKey();
  Crud _crud = Crud();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

signUp() async {

var response =  await _crud.postRequest(linkSignUp, {
  "username" : username.text,
  "email" : email.text,
  "password" : password.text
});
if(response['status'] == "success"){

Navigator.of(context).pushNamedAndRemoveUntil("home", (route) => false);

}else{
  print("SignUp Fil");
}
}

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
           mycontroller: username,
           label: "user name"
           ),
            CustTextFormSign(
           mycontroller: email ,
            label: "email"
           
           ),
            CustTextFormSign(
           mycontroller: password ,
            label: "passwoed"
           
           ),
      MaterialButton(
        color:Colors.blue ,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
        onPressed: () async {

        await signUp();
        },
        child: const Text("signup"),
        ),
        Container(height: 15,),
        InkWell(child: const Text("login"),
        onTap: (){
         Navigator.of(context).pushReplacementNamed("login");

        },
        )
      
      
      
        ])),
        ],),
      )
    );
  }
}