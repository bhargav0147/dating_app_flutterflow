// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReelsCommentsModelStruct extends BaseStruct {
  ReelsCommentsModelStruct({
    String? id,
    String? comment,
  })  : _id = id,
        _comment = comment;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  static ReelsCommentsModelStruct fromMap(Map<String, dynamic> data) =>
      ReelsCommentsModelStruct(
        id: data['id'] as String?,
        comment: data['comment'] as String?,
      );

  static ReelsCommentsModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ReelsCommentsModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'comment': _comment,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReelsCommentsModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReelsCommentsModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReelsCommentsModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReelsCommentsModelStruct &&
        id == other.id &&
        comment == other.comment;
  }

  @override
  int get hashCode => const ListEquality().hash([id, comment]);
}

ReelsCommentsModelStruct createReelsCommentsModelStruct({
  String? id,
  String? comment,
}) =>
    ReelsCommentsModelStruct(
      id: id,
      comment: comment,
    );
