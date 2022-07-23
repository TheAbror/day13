import 'package:day13/post_view.dart';
import 'package:day13/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsCubit>(
        create: (context) => PostsCubit()..getposts(),
        child: PostsView(),
      ),
    );
  }
}
