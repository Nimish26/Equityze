import 'package:flutter/material.dart';

class Slide {
  var imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/ism.jpg',
    title: 'The Indian Stock Market',
    description: "There are only 18 million investors in India, out of the entire population of 1.3 billion.Out of these 18 million investors, only 5% of them make a decent profit overall"
    '''Rest invest without any correct knowledge of the market and companies.'''
  ),
  Slide(
    imageUrl: 'assets/Equityze.jpg',
    title: 'Equityze',
    description: '''
We at Equityze are doing our best to provide you with relevant data for you to choose the best stocks. This app helps you understand the terms which are very important in understanding how a company/firm operates. With the information that is relevant to you, you will be able to choose profitable equities for you.''',
  ),
  Slide(
    imageUrl: 'assets/comp.jpg',
    title: 'It\'s Just the Beginning',
    description: "So let us begin this beatiful journey of compounding"
  ),
];