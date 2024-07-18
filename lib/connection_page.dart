import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  TextEditingController emailController = TextEditingController(
      text:"",
  );
  TextEditingController passwordController = TextEditingController(text:"");
  bool rememberMe = false;
  String message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Connection"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (email){
                if(email == null || email!.isEmpty)
                  return "L'email ne peut pas être vide";
                else if(email.length <3)
                  return "L'email doit avoir plsu de 3 caractères";
              },
              decoration: InputDecoration(label: Text("E-Mail")),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(controller: passwordController,
                decoration: InputDecoration(label: Text("Password"))),
          ),
          CheckboxListTile(value: rememberMe,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Se souvenir de moi"),
              onChanged: (newValue){
                setState(() {
                  rememberMe = newValue ?? false;
                });
              }),
          Spacer(),
          Text(message),
          Container(
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: FilledButton(child: Text("Connection"),onPressed: (){
              context.go("/home");
              setState(() {
                message= "Bienvenue ${emailController.text},";
                if(rememberMe){
                  message += "on se souviendra de vous";
                }else{
                  message += "on ne se souviendra pas de vous";
                }
              });
            },),
          )
        ],
      ),
    );
  }
}

