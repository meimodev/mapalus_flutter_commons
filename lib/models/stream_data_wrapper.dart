// import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapalus_flutter_commons/shared/shared.dart';

// part 'stream_data_wrapper.freezed.dart';

// part 'stream_data_wrapper.g.dart';

// @freezed
// class StreamDataWrapper<T> with _$StreamDataWrapper {
//   // ignore: invalid_annotation_target
//   @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
//   const factory StreamDataWrapper({
//     required StreamDataWrapperOperation operation,
//     required T data,
//   }) = _StreamDataWrapper;
//
//   factory StreamDataWrapper.fromJson(Map<String, Object?> json) =>
//       _$StreamDataWrapperFromJson(json);

class StreamDataWrapper<T> {
  final StreamDataWrapperOperation operation;
  final T data;

  StreamDataWrapper({
    required this.operation,
    required this.data,
  });

  @override
  String toString() {
    return 'StreamDataWrapper{operation: $operation, data: $data}';
  }
}
