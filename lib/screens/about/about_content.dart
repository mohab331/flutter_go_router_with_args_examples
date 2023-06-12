import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  const AboutContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.all(16.0),
      child:  Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl purus in mollis nunc sed id semper risus in. Elit duis tristique sollicitudin nibh sit. Orci phasellus egestas tellus rutrum. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Adipiscing vitae proin sagittis nisl rhoncus mattis. Eget arcu dictum varius duis at. Sed velit dignissim sodales ut eu sem integer vitae. Commodo viverra maecenas accumsan lacus vel facilisis. Dolor magna eget est lorem ipsum dolor sit. Turpis egestas sed tempus urna et pharetra pharetra massa. Pretium aenean pharetra magna ac placerat. Ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia. Vel eros donec ac odio.',
        style: TextStyle(fontSize: 18 ,fontWeight: FontWeight.w600,),
        textAlign: TextAlign.left,),
    );
  }
}
