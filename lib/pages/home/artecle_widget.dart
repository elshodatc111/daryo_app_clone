import 'dart:math';

import 'package:daryo_uz_clone/companents/models/article.dart';
import 'package:daryo_uz_clone/constants/image.dart';
import 'package:flutter/material.dart';
class article_widget extends StatelessWidget {
  Article article;
  article_widget({required this.article, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 6),
                      height: 16,
                      width: 3,
                      color: Colors.pink,
                    ),
                    Text(
                      article.source.name,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  maxLines: 2,
                  article.title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${DateTime.parse(article.publishedAt).day.toString()}-${DateTime.parse(article.publishedAt).month.toString()}-${DateTime.parse(article.publishedAt).year.toString()}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        const SizedBox(width: 4,),
                        Text(
                          '${DateTime.parse(article.publishedAt).hour.toString()} : ${DateTime.parse(article.publishedAt).minute.toString()}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.visibility_outlined,
                          color: Colors.grey,
                        ),
                        Text(
                          Random().nextInt(1000).toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
