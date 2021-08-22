import 'package:coding_test/core/pages/empty_page.dart';
import 'package:coding_test/core/pages/loading_pge.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/repositories/repository.dart';
import 'package:coding_test/di/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controller/home_bloc.dart';
import 'controller/trending_product/home_states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _topSelling(),
            _trendingProduct(),
          ],
        ),
      ),
    );
  }

  Widget _topSelling() {
    return Container(
      child: BlocProvider(
        create: (context) =>
            HomeBloc(locator<Repository>())..add(HomeTrendingEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (ctx, state) {
            if (state is HomeLoadingState) {
              return LoadingPage();
            } else if (state is TrendingLoadedState) {
              if (state.response != null) {
                TrendingProductsResponse _response =
                    state.response; //in case we need the response
                return Center(
                  child: Text(
                    _response.productDescription ?? "",
                  ),
                );
              }
            }
            return EmptyPage(
              message: "Failed to load data from the server",
            );
          },
        ),
      ),
    );
  }

  Widget _trendingProduct() {
    return Container(
      child: BlocProvider(
        create: (context) =>
            HomeBloc(locator<Repository>())..add(HomeNewArrivalEvent()),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (ctx, state) {
            if (state is HomeLoadingState) {
              return LoadingPage();
            } else if (state is NewArrivalsProductsLoadedState) {
              NewArrivalsProductsResponse _response = state.response;
              return Center(
                child: Text(
                  _response.productDescription ?? "",
                ),
              );
            }
            return EmptyPage(
              message: "Failed to load data from the server",
            );
          },
        ),
      ),
    );
  }
}
