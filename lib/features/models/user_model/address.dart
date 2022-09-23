// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:service_tests/features/models/user_model/geo.dart';
part 'address.g.dart';

@JsonSerializable()
class Address extends Equatable {
  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  String? city;
  Geo? geo;
  String? street;
  String? suite;
  String? zipcode;

  @override
  List<Object?> get props => [street, suite, city, zipcode, geo];

  Map<String, dynamic>? toJson() => _$AddressToJson(this);

  Address copyWith({
    String? street,
    String? suite,
    String? city,
    String? zipcode,
    Geo? geo,
  }) {
    return Address(
      street: street ?? this.street,
      suite: suite ?? this.suite,
      city: city ?? this.city,
      zipcode: zipcode ?? this.zipcode,
      geo: geo ?? this.geo,
    );
  }
}
