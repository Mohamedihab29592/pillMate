import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  const PageContent({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);

  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            alignment: Alignment.center,
          ),
          const SizedBox(height: 10,),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium
          ),
        ],
      ),
    );
  }
}