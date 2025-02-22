// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReelsMainModelStruct extends BaseStruct {
  ReelsMainModelStruct({
    String? id,
    String? originalUrl,
    int? likeCount,
    int? commentCount,
    bool? isLiked,
    UserDetailsModelForPostModelStruct? user,
  })  : _id = id,
        _originalUrl = originalUrl,
        _likeCount = likeCount,
        _commentCount = commentCount,
        _isLiked = isLiked,
        _user = user;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "original_url" field.
  String? _originalUrl;
  String get originalUrl => _originalUrl ?? '';
  set originalUrl(String? val) => _originalUrl = val;

  bool hasOriginalUrl() => _originalUrl != null;

  // "likeCount" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "commentCount" field.
  int? _commentCount;
  int get commentCount => _commentCount ?? 0;
  set commentCount(int? val) => _commentCount = val;

  void incrementCommentCount(int amount) =>
      commentCount = commentCount + amount;

  bool hasCommentCount() => _commentCount != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  set isLiked(bool? val) => _isLiked = val;

  bool hasIsLiked() => _isLiked != null;

  // "user" field.
  UserDetailsModelForPostModelStruct? _user;
  UserDetailsModelForPostModelStruct get user =>
      _user ?? UserDetailsModelForPostModelStruct();
  set user(UserDetailsModelForPostModelStruct? val) => _user = val;

  void updateUser(Function(UserDetailsModelForPostModelStruct) updateFn) {
    updateFn(_user ??= UserDetailsModelForPostModelStruct());
  }

  bool hasUser() => _user != null;

  static ReelsMainModelStruct fromMap(Map<String, dynamic> data) =>
      ReelsMainModelStruct(
        id: data['id'] as String?,
        originalUrl: data['original_url'] as String?,
        likeCount: castToType<int>(data['likeCount']),
        commentCount: castToType<int>(data['commentCount']),
        isLiked: data['isLiked'] as bool?,
        user: data['user'] is UserDetailsModelForPostModelStruct
            ? data['user']
            : UserDetailsModelForPostModelStruct.maybeFromMap(data['user']),
      );

  static ReelsMainModelStruct? maybeFromMap(dynamic data) => data is Map
      ? ReelsMainModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'original_url': _originalUrl,
        'likeCount': _likeCount,
        'commentCount': _commentCount,
        'isLiked': _isLiked,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'original_url': serializeParam(
          _originalUrl,
          ParamType.String,
        ),
        'likeCount': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'commentCount': serializeParam(
          _commentCount,
          ParamType.int,
        ),
        'isLiked': serializeParam(
          _isLiked,
          ParamType.bool,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ReelsMainModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReelsMainModelStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        originalUrl: deserializeParam(
          data['original_url'],
          ParamType.String,
          false,
        ),
        likeCount: deserializeParam(
          data['likeCount'],
          ParamType.int,
          false,
        ),
        commentCount: deserializeParam(
          data['commentCount'],
          ParamType.int,
          false,
        ),
        isLiked: deserializeParam(
          data['isLiked'],
          ParamType.bool,
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
  String toString() => 'ReelsMainModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReelsMainModelStruct &&
        id == other.id &&
        originalUrl == other.originalUrl &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        isLiked == other.isLiked &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, originalUrl, likeCount, commentCount, isLiked, user]);
}

ReelsMainModelStruct createReelsMainModelStruct({
  String? id,
  String? originalUrl,
  int? likeCount,
  int? commentCount,
  bool? isLiked,
  UserDetailsModelForPostModelStruct? user,
}) =>
    ReelsMainModelStruct(
      id: id,
      originalUrl: originalUrl,
      likeCount: likeCount,
      commentCount: commentCount,
      isLiked: isLiked,
      user: user ?? UserDetailsModelForPostModelStruct(),
    );
