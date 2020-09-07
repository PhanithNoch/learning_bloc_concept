import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:data_repository/data_repository.dart';
import 'package:flutter/foundation.dart';

part 'post_event.dart';

part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc({@required PostApi postApi})
      : assert(PostRepository != null),
        _postApi = postApi,
        super(PostInitial());

  final PostApi _postApi;

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    if (event is LoadPost){
      yield PostLoading();
      try{
        final result = await _postApi.getPostList();
        yield PostILoaded(data: result.data);
      }catch(e){
        yield PostFailure();
      }
    }
  }
}
