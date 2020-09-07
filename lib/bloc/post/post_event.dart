part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();
}
class LoadPost extends PostEvent{
  @override
  List<Object> get props => [];

}