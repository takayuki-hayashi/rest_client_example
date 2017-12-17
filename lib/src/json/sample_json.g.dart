// GENERATED CODE - DO NOT MODIFY BY HAND

part of sample_json;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

SampleJson _$SampleJsonFromJson(Map<String, dynamic> json) =>
    new SampleJson(json['ip'] as String);

abstract class _$SampleJsonSerializerMixin {
  String get ip;
  Map<String, dynamic> toJson() => <String, dynamic>{'ip': ip};
}

ItemJson _$ItemJsonFromJson(Map<String, dynamic> json) =>
    new ItemJson(json['id'] as String, json['name'] as String);

abstract class _$ItemJsonSerializerMixin {
  String get id;
  String get name;
  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'name': name};
}

CartJson _$CartJsonFromJson(Map<String, dynamic> json) =>
    new CartJson((json['items'] as List)
        ?.map((e) =>
            e == null ? null : new ItemJson.fromJson(e as Map<String, dynamic>))
        ?.toList());

abstract class _$CartJsonSerializerMixin {
  List<ItemJson> get items;
  Map<String, dynamic> toJson() => <String, dynamic>{'items': items};
}
