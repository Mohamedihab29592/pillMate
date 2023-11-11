import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';
import '../bloc/cubit/search_cubit.dart';
import '../widgets/categoriesWidget.dart';
import '../widgets/common/search_text_field.dart';
import '../widgets/product_screen_widgets/buttons.dart';
import '../widgets/product_screen_widgets/similar_product_grid_view.dart';
import 'categories_screen.dart';
import 'category_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _currentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;

    TextEditingController _searchController = TextEditingController();
    PageController _pageController = PageController();

    final List<String> _images = [
      'assets/images/slider.png',
      'assets/images/slider.png',
      'assets/images/slider.png',
    ];

    final List<String> _imagesCateogry = [
      ImageAssets.firstCategory,
      ImageAssets.secondCategory,
      ImageAssets.thirdCategory,
      ImageAssets.fourthCategory,
      ImageAssets.fifthCategory,
      ImageAssets.sixthCategory,
      ImageAssets.seventhCategory,
      ImageAssets.eighthCategory,
      ImageAssets.ninthCategory,
      ImageAssets.tenthCategory,
      ImageAssets.eleventhCategory,
      ImageAssets.twelfthCategory,


    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: width * 0.1,
                      backgroundColor: Colors.transparent,
                      // Make the background transparent
                      child: Image.asset(
                        'assets/images/pp.png',
                        fit: BoxFit
                            .fill, // Adjust the fit to control how the image is displayed
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome, Asmaa',
                            style: Theme.of(context).textTheme.bodyLarge),
                        Row(
                          children: [
                            Image.asset(
                              ImageAssets.location,
                            ),
                            SizedBox(
                              width: width * .02,
                            ),
                            Text('Mansoura',
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      ImageAssets.notification,
                    ),
                  ],
                ),

                CustomSearchBar(
                  textEditingController: _searchController,
                  hintText: 'Search', onChanged: (String ) {  },

                ),
                SizedBox(
                  height: heigh * .019,
                ),
                SizedBox(
                  height: 150,
                  child: PageView.builder(
                    controller: _pageController, 
                    itemCount: _images.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 3.0), // Add spacing
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0), // Make it rounded
                      color: Colors.white, // Set the background color (if needed)
                      ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image(
                            image: AssetImage(_images[index]),
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotHeight: 6,
                    activeDotColor: AppColors.kPrimaryColor,
                  ),
                ),




                SizedBox(
                  height: heigh * .04,
                ),
                Row(
                  children: [
                     Text(
                      'Categories',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Spacer(),
                    InkWell(
                      child:  Text(
                        'see all',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider<SearchCubit<CategoryModel>>(
                                create: (context) => SearchCubit<CategoryModel>(), // Create an instance of SearchCubit
                                child:CategoriesScreen(), // Your existing widget
                              )),
                        );
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: heigh * .010,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,

                      itemBuilder: (context,index)=>
                      CategoriesList(image: _imagesCateogry[index],),

                      separatorBuilder: (context,index)=>const SizedBox(width: 3,), itemCount: _imagesCateogry.length),
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                     Text(
                      'Special Offers',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Spacer(),

                    InkWell(
                      child:  Text(
                        'see all',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      onTap: () {

                      },
                    )
                  ],
                ),
                const Align(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      SimilarProductsGridView(),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
          ],
            ),
          ),
        )));


  }
}
