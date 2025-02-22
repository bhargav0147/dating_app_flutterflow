// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageMediaModelStruct extends BaseStruct {
  ImageMediaModelStruct({
    String? url,
    String? type,
  })  : _url = url,
        _type = type;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static ImageMediaModelStruct fromMap(Map<String, dynamic> data) =>
      ImageMediaModelStruct(
        url: data['url'] as String?,
        type: data['type'] as String?,
      );

  static ImageMediaModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ImageMediaModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'url': _url,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageMediaModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageMediaModelStruct(
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageMediaModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageMediaModelStruct &&
        url == other.url &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([url, type]);
}

ImageMediaModelStruct createImageMediaModelStruct({
  String? url,
  String? type,
}) =>
    ImageMediaModelStruct(
      url: url,
      type: type,
    );
