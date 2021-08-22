import 'package:coding_test/core/pages/empty_page.dart';
import 'package:coding_test/core/pages/loading_pge.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/repositories/repository.dart';
import 'package:coding_test/di/dependency_injection.dart';
import 'package:coding_test/ui/feature/home/widgets/item_product_widget.dart';
import 'package:coding_test/ui/feature/home/widgets/new_shops_widget.dart';
import 'package:coding_test/ui/feature/home/widgets/trending_products_widget.dart';
import 'package:coding_test/utils/colors.dart';
import 'package:coding_test/utils/common_text_util.dart';
import 'package:coding_test/utils/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/home_bloc.dart';
import 'controller/home_states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Size? size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("EcomHunt"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size!.width,
            child: Column(
              children: [
                _trendingSellers(),
                VSpacer5(),
                _trendingProduct(),
                VSpacer5(),
                _products(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _trendingSellers() {
    return BlocProvider(
      create: (context) =>
          HomeBloc(locator<Repository>())..add(HomeShopEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (ctx, state) {
          if (state is HomeLoadingState) {
            return LoadingPage();
          } else if (state is NewShopLoadedState) {
            List<NewShopsResponse> newShopList = state.response;
            return Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 15,
                    offset: Offset(0.0, 3),
                  ),
                ],
              ),
              width: size!.width,
              child: Card(
                elevation: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.0),
                        child: CommonTextUtil(
                          text: "Trending Sellers",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: black,
                          isCentre: false,
                        ),
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              newShopList.length,
                              (index) => NewShopsWidget(
                                  newShopsData: newShopList[index]),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            );
          }
          return EmptyPage(
            message: "Failed to load data from the server",
          );
        },
      ),
    );
  }

  Widget _trendingProduct() {
    return BlocProvider(
      create: (context) =>
          HomeBloc(locator<Repository>())..add(HomeTrendingProductEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (ctx, state) {
          if (state is HomeLoadingState) {
            return LoadingPage();
          } else if (state is TrendingProductsLoadedState) {
            List<TrendingProductsResponse> trendingProductsList =
                state.response;
            return Container(
              width: size!.width,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.only(
                left: 5,
                bottom: 5,
                top: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).backgroundColor.withOpacity(.8),
                    offset: Offset(2, 5),
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Trending Products',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Container(
                    height: size!.height * .26,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingProductsList.length,
                      itemBuilder: (context, index) {
                        return TrendingProducts(
                          trendingProducts: trendingProductsList[index],
                        );
                      },
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
            );
          }
          return EmptyPage(
            message: "Failed to load data from the server",
          );
        },
      ),
    );
  }

  Widget _products() {
    return BlocProvider(
      create: (context) =>
          HomeBloc(locator<Repository>())..add(HomeStoriesProductsEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (ctx, state) {
          if (state is HomeLoadingState) {
            return LoadingPage();
          } else if (state is NewProductsStoriesLoadedState) {
            List<StoriesResponse> productsList = state.response;
            return Container(
              width: size!.width,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(3, (index) {
                    return ItemProductWidget(
                      productsModel: productsList[index],
                    );
                  }),
                ),
              ),
            );
          }
          return EmptyPage(
            message: "Failed to load data from the server",
          );
        },
      ),
    );
  }
}
