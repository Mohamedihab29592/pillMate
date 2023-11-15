import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utils/app_assets.dart';
import 'package:pill_mate/features/home/data/models/category_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../sevices/presenation/screens/chat_screen.dart';
import '../bloc/cubit/search/search_cubit.dart';
import '../widgets/categoriesWidget.dart';
import '../widgets/common/search_text_field.dart';
import '../widgets/product_screen_widgets/similar_product_grid_view.dart';
import 'categories_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// ignore: unused_element
int _currentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var heigh = MediaQuery.of(context).size.height;

    TextEditingController searchController = TextEditingController();
    PageController pageController = PageController();

    final List<String> images = [
      'assets/images/slider.png',
      'assets/images/slider.png',
      'assets/images/slider.png',
    ];

    final List<String> imagesCateogry = [
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
                              color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,
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
                    const Spacer(),
                    Image.asset(
                      ImageAssets.notification,
                      color: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,
                    ),
                  ],
                ),

                CustomSearchBar(
                  textEditingController: searchController,
                  hintText: 'Search', onChanged: (String ) {  },

                ),
                SizedBox(
                  height: heigh * .019,
                ),
                SizedBox(
                  height: 150,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: images.length,
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
                            image: AssetImage(images[index]),
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
                  controller: pageController,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotHeight: 6,
                    activeDotColor: Theme.of(context).brightness == Brightness.dark ?AppColors.kLightPrimaryColor:AppColors.kPrimaryColor,
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
                    const Spacer(),
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
                      CategoriesList(image: imagesCateogry[index],),

                      separatorBuilder: (context,index)=>const SizedBox(width: 3,), itemCount: imagesCateogry.length),
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
        )),

        floatingActionButton: FloatingActionButton(
        onPressed: () {

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatScreen ()),
      );
    },
    backgroundColor: AppColors.darkGreen,
    child:  Image.asset(
      ImageAssets.messageHome,
    ),
    ),

    );



  }
}
