import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterthorn/bloc/post/post_bloc.dart';
import 'package:data_repository/data_repository.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post data'),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<PostBloc, PostState>(builder: (context, state) {
          if (state is PostLoading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is PostILoaded) {
            return _BuildListTile(list: state.data);
          }
          if (state is PostFailure) {
            return Container(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Text('failure'),
              ),
            );
          }
          return Container();
        }),
      ),
    );
  }
}

class _BuildListTile extends StatelessWidget {
  final List<PostData> list;

  const _BuildListTile({Key key, this.list}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          var data = list[index];
          return ListTile(
            title: Text('${data.status}'),
            subtitle: Text('${data.recordType}'),
            trailing: Text('${data.id}'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
