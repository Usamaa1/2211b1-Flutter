import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/postModel.dart';

class ViewPosts extends StatefulWidget {
  const ViewPosts({super.key});

  @override
  State<ViewPosts> createState() => _ViewPostsState();
}

class _ViewPostsState extends State<ViewPosts> {
  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<List<Post>> fetchPosts() async {
    // final posts = await dio.get("https://jsonplaceholder.typicode.com/posts",queryParameters: {"id":2});
    final posts = await dio.get("https://jsonplaceholder.typicode.com/posts");

    print(posts.data);
    // return posts.data;

    List<Post> allPosts =
        (posts.data as List).map((data) => Post.fromJson(data)).toList();

    print(allPosts[0].title);

    return allPosts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: fetchPosts(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: Text("No Data Found"),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final posts = snapshot.data![index];
                  return ListTile(
                    title: Text(posts.title),
                    subtitle: Text(posts.id.toString()),
                    
                  );
                });
          }),
    );
  }
}
