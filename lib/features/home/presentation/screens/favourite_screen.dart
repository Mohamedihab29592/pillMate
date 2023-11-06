import 'package:flutter/material.dart';
import 'package:pill_mate/features/home/presentation/widgets/common/custom_app_bar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(appBarTitle: 'Favorites'),
    );
  }
}
