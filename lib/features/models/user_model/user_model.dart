// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:service_tests/features/models/user_model/address.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends Equatable {
  const UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  List<Object?> get props =>
      [id, name, username, email, address, phone, website];

  UserModel copyWith({
    int? id,
    String? name,
    String? username,
    String? email,
    Address? address,
    String? phone,
    String? website,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      website: website ?? this.website,
    );
  }
}
