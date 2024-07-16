  import 'package:flutter/material.dart';

  class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
      return  Scaffold(
        appBar: AppBar(
          title: Text("Twitter"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            ButtonBar()
          ],
        ),
      );
    }
  }
  class ButtonBar extends StatelessWidget {
    const ButtonBar({super.key});

    @override
    Widget build(BuildContext context)
      =>Container(
        color: Color(0xFF58B0F0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Nouveau",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Accueil",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Rechercher",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      );
}











