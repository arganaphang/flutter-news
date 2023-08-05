import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello/page/home_page_controller.dart';
import 'package:hello/page/search_page.dart';
import 'package:hello/screen/list_screen.dart';
import 'package:hello/widget/skeleton.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Discover",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text(
                  "News from all around the world\n(But not really, because i'm broke af to subscribe premium API)",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 32),
                ClipRRect(
                  borderRadius: BorderRadius.circular(72),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(SearchPage.routeName);
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[200]),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_sharp,
                              color: Colors.black38,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "Search",
                              style: TextStyle(color: Colors.black38),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Fragment(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Page {
  final String label;
  final String prefix;

  Page(this.label, this.prefix);
}

final pages = [
  Page("Nasional", "nasional"),
  Page("Internasional", "internasional"),
  Page("Teknologi", "teknologi"),
];

class Fragment extends StatefulWidget {
  const Fragment({super.key});

  @override
  State<Fragment> createState() => _FragmentState();
}

class _FragmentState extends State<Fragment> {
  final HomePageController _controller = Get.put(HomePageController());
  int _currentIdx = 0;

  void _changeCurrentIdx(int page) {
    setState(() {
      _currentIdx = page;
    });
    _controller.onChange(pages[page].prefix);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
        init: _controller,
        builder: (_) {
          return Column(
            children: [
              SizedBox(
                height: 30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, idx) {
                    return GestureDetector(
                      onTap: () {
                        _changeCurrentIdx(idx);
                      },
                      child: Chip(
                        label: Text(
                          pages[idx].label,
                          style: TextStyle(
                              color: idx == _currentIdx
                                  ? Colors.white
                                  : Colors.black),
                        ),
                        backgroundColor: idx == _currentIdx
                            ? Colors.lightBlue
                            : Colors.transparent,
                      ),
                    );
                  },
                  itemCount: pages.length,
                  separatorBuilder: (ctx, idx) {
                    return const SizedBox(width: 4);
                  },
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 16),
              Obx(
                () => _controller.isLoading.isTrue
                    ? const SkeletonList()
                    : ListScreen(lists: _.list),
              )
            ],
          );
        });
  }
}
