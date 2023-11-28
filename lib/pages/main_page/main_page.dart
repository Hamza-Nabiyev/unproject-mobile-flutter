import 'package:flutter/material.dart';
import 'package:news_aggregator/pages/single_news_page/single_news_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Главная"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SingleNewsPage(),
                ),
              );
            },
            child: const Text("Новость"),
          ),
        ],
      ),
    );
  }
}
