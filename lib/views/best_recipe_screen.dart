import 'package:best_recipe_search_app/views/components/custom_row.dart';
import 'package:best_recipe_search_app/views/components/custom_spacer.dart';
import 'package:best_recipe_search_app/views/components/food_ingrident_card.dart';
import 'package:best_recipe_search_app/views/components/home_app_bar.dart';
import 'package:best_recipe_search_app/views/view_models/best_recipe_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'components/custom_tab.dart';

final _bestRecipeViewModelProvider =
    ChangeNotifierProvider<BestRecipeViewModel>((ref) => BestRecipeViewModel());

class BestRecipeScreen extends ConsumerStatefulWidget {
  const BestRecipeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<BestRecipeScreen> createState() =>
      _BestRecipeScreenConsumerState();
}

class _BestRecipeScreenConsumerState extends ConsumerState<BestRecipeScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  // =
  //     TabController(length: 4, vsync: this);
  int index = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        index = _tabController.index;
      });
    });
    SchedulerBinding.instance?.addPostFrameCallback((timeStamp) {
      final model = ref.read(_bestRecipeViewModelProvider);
      model.searchRecipe();
    });

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = ref.watch(_bestRecipeViewModelProvider);
    return Scaffold(
      backgroundColor: const Color(0xFFFBFCFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
              return <Widget>[
                const SliverToBoxAdapter(child: HomeTabBar()),
                const SliverPinnedHeader(child: CustomSpacer()),
                const SliverPinnedHeader(child: CustomRow()),
                const SliverPinnedHeader(child: CustomSpacer()),
                SliverPinnedHeader(
                    child: Container(
                  color: const Color(0xFFFBFCFE),
                  child: TabBar(
                    // labelColor: Colors.white,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.all(10.0),
                    padding: EdgeInsets.zero,
                    indicatorColor: Colors.transparent,
                    controller: _tabController,
                    tabs: [
                      CustomTab(
                        tabText: "All",
                        tabColor: (index == 0)
                            ? const Color(0XFF52BE6C)
                            : const Color(0XFFFFFFFF),
                        tabTextColor: (index == 0)
                            ? const Color(0xFFFFFFFF)
                            : const Color(0XFFC8C6C7),
                      ),
                      CustomTab(
                        tabText: "Sushi",
                        tabColor: (index == 1)
                            ? const Color(0XFF52BE6C)
                            : const Color(0XFFFFFFFF),
                        // const Color(0XFFFFFFFF)
                        tabTextColor: (index == 1)
                            ? const Color(0xFFFFFFFF)
                            : const Color(0XFFC8C6C7),
                      ),
                      CustomTab(
                        tabText: "Burger",
                        tabColor: (index == 2)
                            ? const Color(0XFF52BE6C)
                            : const Color(0XFFFFFFFF),
                        tabTextColor: (index == 2)
                            ? const Color(0xFFFFFFFF)
                            : const Color(0XFFC8C6C7),
                      ),
                      CustomTab(
                        tabText: "Something Else",
                        tabColor: (index == 3)
                            ? const Color(0XFF52BE6C)
                            : const Color(0XFFFFFFFF),
                        tabTextColor: (index == 3)
                            ? const Color(0xFFFFFFFF)
                            : const Color(0XFFC8C6C7),
                      ),
                    ],
                  ),
                ))
              ];
            },
            body: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: model.allRecipe.length,
                    itemBuilder: ((context, index) =>
                        FoodIngridentCard(recipe: model.allRecipe[index])),
                  ),
                  const Center(child: Text("Page Two")),
                  const Center(child: Text("Page Three")),
                  const Center(child: Text("Page Four")),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFFFBFCFE),
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled, color: Color(0xFF000000)),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark, color: Color(0xFFDFDFDF)),
                label: ""),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.shopping_bag_rounded, color: Color(0xFFDFDFDF)),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Color(0xFFDFDFDF)), label: ""),
          ]),
    );
  }
}
