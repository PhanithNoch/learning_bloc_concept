import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterthorn/bloc/post/post_bloc.dart';
import 'package:flutterthorn/views/post_page.dart';
import 'package:data_repository/data_repository.dart';
import 'package:http/http.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostBloc>(
        create: (context) => PostBloc(
          postApi: new PostApi(),
        )..add(LoadPost()),
        child: PostPage(),
      ),
    );
  }
}
