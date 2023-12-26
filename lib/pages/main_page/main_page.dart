import 'package:flutter/material.dart';
import 'package:news_aggregator/models/news.dart';
import 'package:news_aggregator/pages/single_news_page/single_news_page.dart';

import 'news_card.dart';

List<News> newsList = [
  News(
    title: 'Заголовок новости',
    text: 'Yj',
    time: '02:23',
    tags: ["#тэг1", "#тэг2", "#тэг3"],
  ),
  News(
    title:
        '“Мы идем на уступки”\nПугающее заявление представителя палаты Госдумы',
    text: 'Yj',
    time: '03:19',
    tags: ["#дума", "#законы", "#этоважно", "#срочно"],
  ),
];

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.all(12),
                child: SearchBar(
                  leading: Icon(Icons.filter_list_rounded),
                  trailing: [Icon(Icons.person_2_rounded)],
                  hintText: "Поиск",
                  surfaceTintColor:
                      MaterialStatePropertyAll(Colors.transparent),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: NewsCard(
                        news,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SingleNewsPage(),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
