part of 'user_list_cubit.dart';

class UserListState extends Equatable {
  const UserListState({this.userList});

  final List<UserModel>? userList;

  @override
  List<Object> get props => [];

  UserListState copyWith({List<UserModel>? userList}) =>
      UserListState(userList: userList ?? this.userList);
}

class UserListInitial extends UserListState {}

class UserListLoading extends UserListState {}
