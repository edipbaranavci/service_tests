// ignore_for_file: public_member_api_docs, must_be_immutable,

// import 'package:equatable/equatable.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@immutable
@JsonSerializable()
class Geo extends Equatable {
  const Geo({this.lat, this.lng});

  final String? lat;
  final String? lng;

  factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

  Map<String, dynamic>? toJson() => _$GeoToJson(this);

  @override
  List<Object?> get props => [lat, lng];

  Geo copyWith({String? lat, String? lng}) {
    return Geo(lat: lat ?? this.lat, lng: lng ?? this.lng);
  }
}
