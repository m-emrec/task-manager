import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todo/utils/Home%20Page/categorie_list.dart';
import 'package:todo/utils/search_bar.dart';

import '../theme/theme.dart';
import '../utils/AppBars/home_page_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = "/home-page";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomePageAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Search Bar
                  const CustomSearchBar(),

                  /// Categories Title
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 16),
                    child: Text(
                      "Categories",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),

                  /// Categories Row
                  const CategorieList(),

                  /// My Task Title

                  /// My Tasks
                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 16),
                    child: Text(
                      "My Task",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),

                  ///
                  ///
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
