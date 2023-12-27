import 'package:flutter/material.dart';
import 'package:news_aggregator/pages/main_page/main_page.dart';
import 'package:news_aggregator/pages/main_page/news_card.dart';
import 'package:news_aggregator/styles/styles.dart';

class SingleNewsPage extends StatelessWidget {
  const SingleNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Column(
                children: [
                  Text(
                    "РИА новости",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_border_rounded),
                ),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Text(
                  "GPT-5 “заказала” своих создателей",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverToBoxAdapter(
                child: Text(
                  '''
                    В своём стремлении улучшить опыт мы упускаем, что предприниматели в сети интернет, вне зависимости от их уровня, должны быть объединены в целые кластеры себе подобных. Однозначно, независимые государства могут быть смешаны с нейтральными.
                    Есть над чем задуматься: предприниматели в сети интернет могут быть описаны максимально подробно. В целом, конечно, консультация с.
                    В целом, конечно, базовый вектор развития создаёт необходимость включения в производственный план целого ряда внеочередных мероприятий с учётом комплекса стандартных подходов. Таким образом, разбавленное изрядной долей эмпатии, рациональное мышление позволяет.
                  ''',
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverToBoxAdapter(
                child: ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        width: 200,
                        height: 200,
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
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
