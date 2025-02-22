// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyPostModelStruct extends BaseStruct {
  MyPostModelStruct({
    String? description,
    String? id,
    int? likeCount,
    int? commentCount,
    List<ImageMediaModelStruct>? media,
    UserDetailsModelForPostModelStruct? user,
    String? postImage,
    bool? isLiked,
  })  : _description = description,
        _id = id,
        _likeCount = likeCount,
        _commentCount = commentCount,
        _media = media,
        _user = user,
        _postImage = postImage,
        _isLiked = isLiked;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "media" field.
  List<ImageMediaModelStruct>? _media;
  List<ImageMediaModelStruct> get media => _media ?? const [];
  set media(List<ImageMediaModelStruct>? val) => _media = val;

  void updateMedia(Function(List<ImageMediaModelStruct>) updateFn) {
    updateFn(_media ??= []);
  }

  bool hasMedia() => _media != null;

  // "user" field.
  UserDetailsModelForPostModelStruct? _user;
  UserDetailsModelForPostModelStruct get user =>
      _user ?? UserDetailsModelForPostModelStruct();
  set user(UserDetailsModelForPostModelStruct? val) => _user = val;

  void updateUser(Function(UserDetailsModelForPostModelStruct) updateFn) {
    updateFn(_user ??= UserDetailsModelForPostModelStruct());
  }

  bool hasUser() => _user != null;

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  set postImage(String? val) => _postImage = val;

  bool hasPostImage() => _postImage != null;

  // "isLiked" field.
  bool? _isLiked;
  bool get isLiked => _isLiked ?? false;
  set isLiked(bool? val) => _isLiked = val;

  bool hasIsLiked() => _isLiked != null;

  static MyPostModelStruct fromMap(Map<String, dynamic> data) =>
      MyPostModelStruct(
        description: data['description'] as String?,
        id: data['id'] as String?,
        likeCount: castToType<int>(data['likeCount']),
        commentCount: castToType<int>(data['commentCount']),
        media: getStructList(
          data['media'],
          ImageMediaModelStruct.fromMap,
        ),
        user: data['user'] is UserDetailsModelForPostModelStruct
            ? data['user']
            : UserDetailsModelForPostModelStruct.maybeFromMap(data['user']),
        postImage: data['postImage'] as String?,
        isLiked: data['isLiked'] as bool?,
      );

  static MyPostModelStruct? maybeFromMap(dynamic data) => data is Map
      ? MyPostModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'description': _description,
        'id': _id,
        'likeCount': _likeCount,
        'commentCount': _commentCount,
        'media': _media?.map((e) => e.toMap()).toList(),
        'user': _user?.toMap(),
        'postImage': _postImage,
        'isLiked': _isLiked,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
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
        'media': serializeParam(
          _media,
          ParamType.DataStruct,
          isList: true,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'postImage': serializeParam(
          _postImage,
          ParamType.String,
        ),
        'isLiked': serializeParam(
          _isLiked,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MyPostModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      MyPostModelStruct(
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
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
        media: deserializeStructParam<ImageMediaModelStruct>(
          data['media'],
          ParamType.DataStruct,
          true,
          structBuilder: ImageMediaModelStruct.fromSerializableMap,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDetailsModelForPostModelStruct.fromSerializableMap,
        ),
        postImage: deserializeParam(
          data['postImage'],
          ParamType.String,
          false,
        ),
        isLiked: deserializeParam(
          data['isLiked'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MyPostModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MyPostModelStruct &&
        description == other.description &&
        id == other.id &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        listEquality.equals(media, other.media) &&
        user == other.user &&
        postImage == other.postImage &&
        isLiked == other.isLiked;
  }

  @override
  int get hashCode => const ListEquality().hash([
        description,
        id,
        likeCount,
        commentCount,
        media,
        user,
        postImage,
        isLiked
      ]);
}

MyPostModelStruct createMyPostModelStruct({
  String? description,
  String? id,
  int? likeCount,
  int? commentCount,
  UserDetailsModelForPostModelStruct? user,
  String? postImage,
  bool? isLiked,
}) =>
    MyPostModelStruct(
      description: description,
      id: id,
      likeCount: likeCount,
      commentCount: commentCount,
      user: user ?? UserDetailsModelForPostModelStruct(),
      postImage: postImage,
      isLiked: isLiked,
    );
