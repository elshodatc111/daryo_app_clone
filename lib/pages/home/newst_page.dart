import 'package:daryo_uz_clone/constants/image.dart';
import 'package:daryo_uz_clone/pages/home/artecle_widget.dart';
import 'package:daryo_uz_clone/servis/article_servis.dart';
import 'package:flutter/material.dart';

class NewstPage extends StatelessWidget {
  const NewstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getArticles(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          List articles = snapshot.data.articles;
          return Container(
            padding: const EdgeInsets.all(8.0),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 52,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Bugun, ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Shanba 15:30",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.splitscreen_sharp),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu_book_rounded),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) => article_widget(article: articles[index],),
                    itemCount: 12,
                  ),
                ),
              ],
            ),
          );
        }
        if (snapshot.hasError) {
          return Container(
            child: Text(snapshot.error.toString()),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            child: Text("Yuklanmoqda"),
          );
        }
        return Container();
      },
    );
  }
}
