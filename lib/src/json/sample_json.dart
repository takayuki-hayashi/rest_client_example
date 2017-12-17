library sample_json;

import 'package:json_annotation/json_annotation.dart';

part 'sample_json.g.dart';

@JsonSerializable()
class SampleJson extends Object with _$SampleJsonSerializerMixin{
  final String ip;
  SampleJson(this.ip);
  factory SampleJson.fromJson(Map<String, dynamic> json) => _$SampleJsonFromJson(json);
}


@JsonSerializable()
class ItemJson extends Object with _$ItemJsonSerializerMixin{
  final String id;
  final String name;
  ItemJson(this.id, this.name);
  factory ItemJson.fromJson(Map<String, dynamic> json) => _$ItemJsonFromJson(json);
}

@JsonSerializable()
class CartJson extends Object with _$CartJsonSerializerMixin{
  final List<ItemJson> items;
  CartJson(this.items);
  factory CartJson.fromJson(Map<String, dynamic> json) => _$CartJsonFromJson(json);
}