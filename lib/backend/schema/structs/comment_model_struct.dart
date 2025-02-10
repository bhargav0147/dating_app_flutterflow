// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentModelStruct extends BaseStruct {
  CommentModelStruct({
    String? id,
    String? text,
    UserDetailsModelForPostModelStruct? user,
  })  : _id = id,
        _text = text,
        _user = user;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "user" field.
  UserDetailsModelForPostModelStruct? _user;
  UserDetailsModelForPostModelStruct get user =>
      _user ?? UserDetailsModelForPostModelStruct();
  set user(UserDetailsModelForPostModelStruct? val) => _user = val;

  void updateUser(Function(UserDetailsModelForPostModelStruct) updateFn) {
    updateFn(_user ??= UserDetailsModelForPostModelStruct());
  }

  bool hasUser() => _user != null;

  static CommentModelStruct fromMap(Map<String, dynamic> data) =>
      CommentModelStruct(
        id: data['id'] as String?,
        text: data['text'] as String?,
        user: data['user'] is UserDetailsModelForPostModelStruct
            ? data['user']
            : UserDetailsModelForPostModelStruct.maybeFromMap(data['user']),
      );

  static CommentModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CommentModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'text': _text,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CommentModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommentModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDetailsModelForPostModelStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CommentModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommentModelStruct &&
        id == other.id &&
        text == other.text &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([id, text, user]);
}

CommentModelStruct createCommentModelStruct({
  String? id,
  String? text,
  UserDetailsModelForPostModelStruct? user,
}) =>
    CommentModelStruct(
      id: id,
      text: text,
      user: user ?? UserDetailsModelForPostModelStruct(),
    );
