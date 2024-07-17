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
            ButtonBar(),
            Tweet()
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

class Tweet extends StatelessWidget {
  const Tweet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TweetContent(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TweetActions(),
      )
    ],);
  }
}
class TweetContent extends StatelessWidget {
  const TweetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      child: Row(
        children: [
          Image.network("https://picsum.photos/id/2/125/125"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(child: Text("UsernameUsernameUsername")),
                    Text("50s",style: Theme.of(context).textTheme.labelLarge,)
                  ],),
                Expanded(child: Text("TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET TWEET "))
              ],),
            ),
          )
        ],
      ),
    );
  }
}
class TweetActions extends StatelessWidget {
  const TweetActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      TextButton(onPressed: (){}, child:Text("Répondre")),
      TextButton(onPressed: (){}, child:Text("Retweet")),
      TextButton(onPressed: (){}, child:Text("Favoris")),
    ],);
  }
}













