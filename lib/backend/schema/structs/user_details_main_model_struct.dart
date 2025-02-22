// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDetailsMainModelStruct extends BaseStruct {
  UserDetailsMainModelStruct({
    String? username,
    String? email,
    String? mobile,
    String? countryCode,
    UserDetailsModelStruct? profile,
    List<String>? friends,
    List<String>? blockedUsers,
    bool? isEmailVerified,
    List<String>? posts,
    List<String>? videos,
    bool? isProfileCompleted,
    bool? isPrefrencesCompleted,
    UserPrefrencesDetailsModelStruct? prefrences,
    int? totalFriends,
    int? totalPost,
  })  : _username = username,
        _email = email,
        _mobile = mobile,
        _countryCode = countryCode,
        _profile = profile,
        _friends = friends,
        _blockedUsers = blockedUsers,
        _isEmailVerified = isEmailVerified,
        _posts = posts,
        _videos = videos,
        _isProfileCompleted = isProfileCompleted,
        _isPrefrencesCompleted = isPrefrencesCompleted,
        _prefrences = prefrences,
        _totalFriends = totalFriends,
        _totalPost = totalPost;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "mobile" field.
  String? _mobile;
  String get mobile => _mobile ?? '';
  set mobile(String? val) => _mobile = val;

  bool hasMobile() => _mobile != null;

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  set countryCode(String? val) => _countryCode = val;

  bool hasCountryCode() => _countryCode != null;

  // "profile" field.
  UserDetailsModelStruct? _profile;
  UserDetailsModelStruct get profile => _profile ?? UserDetailsModelStruct();
  set profile(UserDetailsModelStruct? val) => _profile = val;

  void updateProfile(Function(UserDetailsModelStruct) updateFn) {
    updateFn(_profile ??= UserDetailsModelStruct());
  }

  bool hasProfile() => _profile != null;

  // "friends" field.
  List<String>? _friends;
  List<String> get friends => _friends ?? const [];
  set friends(List<String>? val) => _friends = val;

  void updateFriends(Function(List<String>) updateFn) {
    updateFn(_friends ??= []);
  }

  bool hasFriends() => _friends != null;

  // "blockedUsers" field.
  List<String>? _blockedUsers;
  List<String> get blockedUsers => _blockedUsers ?? const [];
  set blockedUsers(List<String>? val) => _blockedUsers = val;

  void updateBlockedUsers(Function(List<String>) updateFn) {
    updateFn(_blockedUsers ??= []);
  }

  bool hasBlockedUsers() => _blockedUsers != null;

  // "isEmailVerified" field.
  bool? _isEmailVerified;
  bool get isEmailVerified => _isEmailVerified ?? false;
  set isEmailVerified(bool? val) => _isEmailVerified = val;

  bool hasIsEmailVerified() => _isEmailVerified != null;

  // "posts" field.
  List<String>? _posts;
  List<String> get posts => _posts ?? const [];
  set posts(List<String>? val) => _posts = val;

  void updatePosts(Function(List<String>) updateFn) {
    updateFn(_posts ??= []);
  }

  bool hasPosts() => _posts != null;

  // "videos" field.
  List<String>? _videos;
  List<String> get videos => _videos ?? const [];
  set videos(List<String>? val) => _videos = val;

  void updateVideos(Function(List<String>) updateFn) {
    updateFn(_videos ??= []);
  }

  bool hasVideos() => _videos != null;

  // "isProfileCompleted" field.
  bool? _isProfileCompleted;
  bool get isProfileCompleted => _isProfileCompleted ?? false;
  set isProfileCompleted(bool? val) => _isProfileCompleted = val;

  bool hasIsProfileCompleted() => _isProfileCompleted != null;

  // "isPrefrencesCompleted" field.
  bool? _isPrefrencesCompleted;
  bool get isPrefrencesCompleted => _isPrefrencesCompleted ?? false;
  set isPrefrencesCompleted(bool? val) => _isPrefrencesCompleted = val;

  bool hasIsPrefrencesCompleted() => _isPrefrencesCompleted != null;

  // "prefrences" field.
  UserPrefrencesDetailsModelStruct? _prefrences;
  UserPrefrencesDetailsModelStruct get prefrences =>
      _prefrences ?? UserPrefrencesDetailsModelStruct();
  set prefrences(UserPrefrencesDetailsModelStruct? val) => _prefrences = val;

  void updatePrefrences(Function(UserPrefrencesDetailsModelStruct) updateFn) {
    updateFn(_prefrences ??= UserPrefrencesDetailsModelStruct());
  }

  bool hasPrefrences() => _prefrences != null;

  // "totalFriends" field.
  int? _totalFriends;
  int get totalFriends => _totalFriends ?? 0;
  set totalFriends(int? val) => _totalFriends = val;

  void incrementTotalFriends(int amount) =>
      totalFriends = totalFriends + amount;

  bool hasTotalFriends() => _totalFriends != null;

  // "totalPost" field.
  int? _totalPost;
  int get totalPost => _totalPost ?? 0;
  set totalPost(int? val) => _totalPost = val;

  void incrementTotalPost(int amount) => totalPost = totalPost + amount;

  bool hasTotalPost() => _totalPost != null;

  static UserDetailsMainModelStruct fromMap(Map<String, dynamic> data) =>
      UserDetailsMainModelStruct(
        username: data['username'] as String?,
        email: data['email'] as String?,
        mobile: data['mobile'] as String?,
        countryCode: data['countryCode'] as String?,
        profile: data['profile'] is UserDetailsModelStruct
            ? data['profile']
            : UserDetailsModelStruct.maybeFromMap(data['profile']),
        friends: getDataList(data['friends']),
        blockedUsers: getDataList(data['blockedUsers']),
        isEmailVerified: data['isEmailVerified'] as bool?,
        posts: getDataList(data['posts']),
        videos: getDataList(data['videos']),
        isProfileCompleted: data['isProfileCompleted'] as bool?,
        isPrefrencesCompleted: data['isPrefrencesCompleted'] as bool?,
        prefrences: data['prefrences'] is UserPrefrencesDetailsModelStruct
            ? data['prefrences']
            : UserPrefrencesDetailsModelStruct.maybeFromMap(data['prefrences']),
        totalFriends: castToType<int>(data['totalFriends']),
        totalPost: castToType<int>(data['totalPost']),
      );

  static UserDetailsMainModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserDetailsMainModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'username': _username,
        'email': _email,
        'mobile': _mobile,
        'countryCode': _countryCode,
        'profile': _profile?.toMap(),
        'friends': _friends,
        'blockedUsers': _blockedUsers,
        'isEmailVerified': _isEmailVerified,
        'posts': _posts,
        'videos': _videos,
        'isProfileCompleted': _isProfileCompleted,
        'isPrefrencesCompleted': _isPrefrencesCompleted,
        'prefrences': _prefrences?.toMap(),
        'totalFriends': _totalFriends,
        'totalPost': _totalPost,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'mobile': serializeParam(
          _mobile,
          ParamType.String,
        ),
        'countryCode': serializeParam(
          _countryCode,
          ParamType.String,
        ),
        'profile': serializeParam(
          _profile,
          ParamType.DataStruct,
        ),
        'friends': serializeParam(
          _friends,
          ParamType.String,
          isList: true,
        ),
        'blockedUsers': serializeParam(
          _blockedUsers,
          ParamType.String,
          isList: true,
        ),
        'isEmailVerified': serializeParam(
          _isEmailVerified,
          ParamType.bool,
        ),
        'posts': serializeParam(
          _posts,
          ParamType.String,
          isList: true,
        ),
        'videos': serializeParam(
          _videos,
          ParamType.String,
          isList: true,
        ),
        'isProfileCompleted': serializeParam(
          _isProfileCompleted,
          ParamType.bool,
        ),
        'isPrefrencesCompleted': serializeParam(
          _isPrefrencesCompleted,
          ParamType.bool,
        ),
        'prefrences': serializeParam(
          _prefrences,
          ParamType.DataStruct,
        ),
        'totalFriends': serializeParam(
          _totalFriends,
          ParamType.int,
        ),
        'totalPost': serializeParam(
          _totalPost,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserDetailsMainModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserDetailsMainModelStruct(
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        mobile: deserializeParam(
          data['mobile'],
          ParamType.String,
          false,
        ),
        countryCode: deserializeParam(
          data['countryCode'],
          ParamType.String,
          false,
        ),
        profile: deserializeStructParam(
          data['profile'],
          ParamType.DataStruct,
          false,
          structBuilder: UserDetailsModelStruct.fromSerializableMap,
        ),
        friends: deserializeParam<String>(
          data['friends'],
          ParamType.String,
          true,
        ),
        blockedUsers: deserializeParam<String>(
          data['blockedUsers'],
          ParamType.String,
          true,
        ),
        isEmailVerified: deserializeParam(
          data['isEmailVerified'],
          ParamType.bool,
          false,
        ),
        posts: deserializeParam<String>(
          data['posts'],
          ParamType.String,
          true,
        ),
        videos: deserializeParam<String>(
          data['videos'],
          ParamType.String,
          true,
        ),
        isProfileCompleted: deserializeParam(
          data['isProfileCompleted'],
          ParamType.bool,
          false,
        ),
        isPrefrencesCompleted: deserializeParam(
          data['isPrefrencesCompleted'],
          ParamType.bool,
          false,
        ),
        prefrences: deserializeStructParam(
          data['prefrences'],
          ParamType.DataStruct,
          false,
          structBuilder: UserPrefrencesDetailsModelStruct.fromSerializableMap,
        ),
        totalFriends: deserializeParam(
          data['totalFriends'],
          ParamType.int,
          false,
        ),
        totalPost: deserializeParam(
          data['totalPost'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserDetailsMainModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserDetailsMainModelStruct &&
        username == other.username &&
        email == other.email &&
        mobile == other.mobile &&
        countryCode == other.countryCode &&
        profile == other.profile &&
        listEquality.equals(friends, other.friends) &&
        listEquality.equals(blockedUsers, other.blockedUsers) &&
        isEmailVerified == other.isEmailVerified &&
        listEquality.equals(posts, other.posts) &&
        listEquality.equals(videos, other.videos) &&
        isProfileCompleted == other.isProfileCompleted &&
        isPrefrencesCompleted == other.isPrefrencesCompleted &&
        prefrences == other.prefrences &&
        totalFriends == other.totalFriends &&
        totalPost == other.totalPost;
  }

  @override
  int get hashCode => const ListEquality().hash([
        username,
        email,
        mobile,
        countryCode,
        profile,
        friends,
        blockedUsers,
        isEmailVerified,
        posts,
        videos,
        isProfileCompleted,
        isPrefrencesCompleted,
        prefrences,
        totalFriends,
        totalPost
      ]);
}

UserDetailsMainModelStruct createUserDetailsMainModelStruct({
  String? username,
  String? email,
  String? mobile,
  String? countryCode,
  UserDetailsModelStruct? profile,
  bool? isEmailVerified,
  bool? isProfileCompleted,
  bool? isPrefrencesCompleted,
  UserPrefrencesDetailsModelStruct? prefrences,
  int? totalFriends,
  int? totalPost,
}) =>
    UserDetailsMainModelStruct(
      username: username,
      email: email,
      mobile: mobile,
      countryCode: countryCode,
      profile: profile ?? UserDetailsModelStruct(),
      isEmailVerified: isEmailVerified,
      isProfileCompleted: isProfileCompleted,
      isPrefrencesCompleted: isPrefrencesCompleted,
      prefrences: prefrences ?? UserPrefrencesDetailsModelStruct(),
      totalFriends: totalFriends,
      totalPost: totalPost,
    );
