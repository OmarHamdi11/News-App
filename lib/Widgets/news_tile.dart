import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/screens/news_web_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            const Border.symmetric(horizontal: BorderSide(color: Colors.grey)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NewsWebView(
                  url: article.url,
                );
              },
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    article.image ??
                        'https://cdn.pixabay.com/photo/2013/07/12/19/16/newspaper-154444_960_720.png',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(height: 12),
              Text(
                article.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                article.subTitle ?? '',
                maxLines: 2,
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
