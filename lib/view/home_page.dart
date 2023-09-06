import 'package:flutter/material.dart';
import 'package:grokking_algorithms_applied/view/chapter_page.dart';

import '../constants/app_texts.dart';
import 'widgets/appbar_widget.dart';
import 'widgets/list_tile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            toolbarHeight: 250,
            bottom: const AppBarWidget(),
            floating: true,
            flexibleSpace: Container(
              color: Colors.redAccent,
              padding: const EdgeInsets.only(top: 35),
              child: Image.asset('lib/assets/livro_capa.png'),
            ),
          ),
          SliverList.builder(
            itemCount: AppTexts.chapters.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTileWidget(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ChapterPage(),
                    ),
                  ),
                  title: AppTexts.chapters[index]['title'],
                  description: AppTexts.chapters[index]['description'],
                  trailing:
                      AppTexts.chapters[index]['issuesQuantity'].toString(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
