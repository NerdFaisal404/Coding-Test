import 'package:coding_test/core/pages/empty_page.dart';
import 'package:coding_test/core/pages/loading_pge.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/repositories/repository.dart';
import 'package:coding_test/di/dependency_injection.dart';
import 'package:coding_test/ui/feature/home/widgets/trending_products.dart';
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
        child: Container(
          width: size!.width,
          child: ListView(
            children: [
              _trendingProduct(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _trendingProduct() {
    return BlocProvider(
      create: (context) =>
          HomeBloc(locator<Repository>())..add(HomeTrendingEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (ctx, state) {
          if (state is HomeLoadingState) {
            return LoadingPage();
          } else if (state is TrendingLoadedState) {
            List<TrendingProductsResponse> trendingProductsList = state.response;
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
                    'Trending Sellers',
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
}
