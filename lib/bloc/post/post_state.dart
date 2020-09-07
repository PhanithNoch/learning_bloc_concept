part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();
}

class PostInitial extends PostState {
  @override
  List<Object> get props => [];
}

class PostLoading extends PostState {
  @override
  List<Object> get props => [];
}
class PostILoaded extends PostState {
  final List<PostData> data;

  PostILoaded({this.data});
  @override
  List<Object> get props => [data];
}
class PostFailure extends PostState {
  @override
  List<Object> get props => [];
}
