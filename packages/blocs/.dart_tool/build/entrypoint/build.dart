// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:json_serializable/builder.dart' as _i2;
import 'package:source_gen/builder.dart' as _i3;
import 'package:injectable_generator/builder.dart' as _i4;
import 'package:build_resolvers/builder.dart' as _i5;
import 'dart:isolate' as _i6;
import 'package:build_runner/build_runner.dart' as _i7;
import 'dart:io' as _i8;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'json_serializable:json_serializable',
    [_i2.jsonSerializable],
    _i1.toDependentsOf(r'json_serializable'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
    r'source_gen:combining_builder',
    [_i3.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'injectable_generator:injectable_builder',
    [_i4.injectableBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'injectable_generator:injectable_config_builder',
    [_i4.injectableConfigBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'build_resolvers:transitive_digests',
    [_i5.transitiveDigestsBuilder],
    _i1.toAllPackages(),
    isOptional: true,
    hideOutput: true,
    appliesBuilders: const [r'build_resolvers:transitive_digest_cleanup'],
  ),
  _i1.applyPostProcess(
    r'build_resolvers:transitive_digest_cleanup',
    _i5.transitiveDigestCleanup,
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i3.partCleanup,
  ),
];
void main(
  List<String> args, [
  _i6.SendPort? sendPort,
]) async {
  var result = await _i7.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i8.exitCode = result;
}
