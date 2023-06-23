import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class loadmore extends StatefulWidget {
  const loadmore({Key? key}) : super(key: key);

  @override
  State<loadmore> createState() => _loadmoreState();
}

class _loadmoreState extends State<loadmore> {
  @override
  bool isLoadingMore = false;
  final scrollController = ScrollController();
  List posts = [];
  int page = 1;

  void initState() {
    super.initState();
    scrollController.addListener(_scrollListner);
    fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: ListView.builder(
          padding: EdgeInsets.all(12),
          controller: scrollController,
          itemCount: isLoadingMore ? posts.length + 1 : posts.length + 1,
          itemBuilder: (context, index) {
            if (index < posts.length) {
              final post = posts[index];
              final title = post['title']['rendered'];

              return Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text('${index + 1}')),
                  title: Text(
                    '$title',
                    maxLines: 1,
                  ),
                  subtitle: Text(
                    '$title',
                    maxLines: 2,
                  ),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }

  Future<void> fetchPosts() async {
    final url =
        'https://techcrunch.com/wp-json/wp/v2/posts?context=embed&per-page=10&page=$page';
    print('$url');
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      setState(() {
        posts = posts + json;
      });
    } else {
      print('error');
    }
  }

  Future<void> _scrollListner() async {
    if (isLoadingMore) return;
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      setState(() {
        isLoadingMore = true;
      });
      page = page + 1;

      await fetchPosts();
      setState(() {
        isLoadingMore = false;
      });
    }
  }
}
