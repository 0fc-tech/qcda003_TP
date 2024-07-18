import 'package:flutter/material.dart';

void main() {
  runApp(const FormulaireApp());
}
class FormulaireApp extends StatelessWidget {
  const FormulaireApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: ConnectionPage(),
    );
  }
}

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  TextEditingController emailController = TextEditingController(text:"");
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
            child: TextField(controller: emailController,
              decoration: InputDecoration(label: Text("E-Mail")),),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(controller: passwordController,
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

