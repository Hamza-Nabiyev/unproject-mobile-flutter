import 'package:flutter/material.dart';
import 'package:news_aggregator/models/news.dart';
import 'package:news_aggregator/styles/styles.dart';

class NewsCard extends StatelessWidget {
  final News news;
  final Function onTap;

  const NewsCard(this.news, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xfff1f1f1),
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.time,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: styles.themeColors.caption),
                ),
                const SizedBox(height: 15),
                Text(
                  news.title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const Expanded(child: SizedBox.shrink()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      news.tags.join(' '),
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: styles.themeColors.textSecondary,
                          ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
