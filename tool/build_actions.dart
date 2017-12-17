import 'package:build_runner/build_runner.dart';
import 'package:json_serializable/json_serializable.dart';

List<BuildAction> get buildActions => [
  new BuildAction(
    jsonPartBuilder(),
    'rest_client_example',
    inputs: const [
      'lib/src/json/*.dart',
    ],
  ),
];