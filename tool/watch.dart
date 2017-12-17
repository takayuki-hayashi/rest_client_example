import 'package:build_runner/build_runner.dart';
import 'build_actions.dart';

void main() {
  watch(buildActions, deleteFilesByDefault: true);
}