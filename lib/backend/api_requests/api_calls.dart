import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Dating Group Code

class DatingGroup {
  static String getBaseUrl() => 'https://c2.trennd.in/';
  static Map<String, String> headers = {};
  static LoginCall loginCall = LoginCall();
  static ForgotPasswordCall forgotPasswordCall = ForgotPasswordCall();
  static SendOTPCall sendOTPCall = SendOTPCall();
  static UserRegisterCall userRegisterCall = UserRegisterCall();
  static UpdateProfileDetailsCall updateProfileDetailsCall =
      UpdateProfileDetailsCall();
  static AddNewPostCall addNewPostCall = AddNewPostCall();
  static AddNewCommentCall addNewCommentCall = AddNewCommentCall();
  static UpdateYourPrefrenceCall updateYourPrefrenceCall =
      UpdateYourPrefrenceCall();
  static GetUserProfileCall getUserProfileCall = GetUserProfileCall();
  static GetFriendRequestCall getFriendRequestCall = GetFriendRequestCall();
  static GetReelVideoCall getReelVideoCall = GetReelVideoCall();
  static UploadNewReelCall uploadNewReelCall = UploadNewReelCall();
  static GetUserCall getUserCall = GetUserCall();
  static GetMyPostsCall getMyPostsCall = GetMyPostsCall();
  static GetCommentsCall getCommentsCall = GetCommentsCall();
  static GetMyFriendsCall getMyFriendsCall = GetMyFriendsCall();
  static GetAllPostCall getAllPostCall = GetAllPostCall();
  static SendFriendRequestCall sendFriendRequestCall = SendFriendRequestCall();
  static FriendRequestStatusChangeCall friendRequestStatusChangeCall =
      FriendRequestStatusChangeCall();
  static ChangePasswordCall changePasswordCall = ChangePasswordCall();
  static GetUserDataWithPreferenceCall getUserDataWithPreferenceCall =
      GetUserDataWithPreferenceCall();
  static GetUserHomePageCall getUserHomePageCall = GetUserHomePageCall();
  static ReelsLikeDislikeCall reelsLikeDislikeCall = ReelsLikeDislikeCall();
  static PostLikeDislikeCall postLikeDislikeCall = PostLikeDislikeCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}api/user/auth/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
}

class ForgotPasswordCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Forgot Password',
      apiUrl: '${baseUrl}api/user/auth/forgot',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SendOTPCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? mobile = '',
    String? countryCode = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send OTP',
      apiUrl: '${baseUrl}api/user/auth/sendOtp',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'email': email,
        'mobile': mobile,
        'countryCode': countryCode,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UserRegisterCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? mobile = '',
    String? countryCode = '',
    String? password = '',
    String? otp = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'User Register',
      apiUrl: '${baseUrl}api/user/auth/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'email': email,
        'mobile': mobile,
        'countryCode': countryCode,
        'password': password,
        'otp': otp,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  dynamic authToken(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}

class UpdateProfileDetailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? bio = '',
    String? city = '',
    String? country = '',
    String? name = '',
    String? dateOfBirth = '',
    String? gender = '',
    String? lat = '',
    String? long = '',
    FFUploadedFile? mainImage,
    List<FFUploadedFile>? profilePicturesList,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();
    final profilePictures = profilePicturesList ?? [];

    return ApiManager.instance.makeApiCall(
      callName: 'Update Profile Details',
      apiUrl: '${baseUrl}api/user/profile',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'bio': bio,
        'city': city,
        'country': country,
        'name': name,
        'dateOfBirth': dateOfBirth,
        'gender': gender,
        'lat': lat,
        'long': long,
        'mainImage': mainImage,
        'profilePictures': profilePictures,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessaege(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddNewPostCall {
  Future<ApiCallResponse> call({
    String? description = '',
    FFUploadedFile? postMedia,
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add New Post',
      apiUrl: '${baseUrl}api/user/post',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'postMedia': postMedia,
        'description': description,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessaege(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddNewCommentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? id = '',
    String? text = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Add New Comment',
      apiUrl: '${baseUrl}api/user/post/comment/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'text': text,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessaege(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class UpdateYourPrefrenceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? genderPrefrences = '',
    double? minAge,
    double? maxAge,
    String? interests = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Update Your Prefrence',
      apiUrl: '${baseUrl}api/user/prefrence',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'genderPrefrences': genderPrefrences,
        'minAge': minAge,
        'maxAge': maxAge,
        'interests': interests,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetUserProfileCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Profile',
      apiUrl: '${baseUrl}api/user/profile',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  bool? profile(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isProfileCompleted''',
      ));
  bool? pref(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isPrefrencesCompleted''',
      ));
}

class GetFriendRequestCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Friend Request',
      apiUrl: '${baseUrl}api/user/friend/request',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetReelVideoCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Reel Video',
      apiUrl: '${baseUrl}api/user/video',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadNewReelCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    FFUploadedFile? shortVideos,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Upload New Reel',
      apiUrl: '${baseUrl}api/user/video',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'shortVideos': shortVideos,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetUserCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User',
      apiUrl: '${baseUrl}api/user/preference',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyPostsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get My Posts',
      apiUrl: '${baseUrl}api/user/post/my',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCommentsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
    String? id = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Comments',
      apiUrl: '${baseUrl}api/user/post/comment/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyFriendsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get My Friends',
      apiUrl: '${baseUrl}api/user/friend',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPostCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? page,
    int? limit,
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get All Post',
      apiUrl: '${baseUrl}api/user/post/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'page': page,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendFriendRequestCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send Friend Request',
      apiUrl: '${baseUrl}api/user/friend/${userId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class FriendRequestStatusChangeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? requestId = '',
    String? status = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Friend Request Status Change',
      apiUrl:
          '${baseUrl}api/user/friend/status?id=${requestId}&status=${status}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ChangePasswordCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? currentPassword = '',
    String? newPassword = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Change Password',
      apiUrl: '${baseUrl}api/user/auth/reset',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {
        'currentPassword': currentPassword,
        'newPassword': newPassword,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetUserDataWithPreferenceCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Data With Preference',
      apiUrl: '${baseUrl}api/user/preference',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserHomePageCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get User Home Page',
      apiUrl: '${baseUrl}api/user/preference',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReelsLikeDislikeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Reels Like Dislike',
      apiUrl: '${baseUrl}api/user/video/${id}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PostLikeDislikeCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? authToken = '',
  }) async {
    final baseUrl = DatingGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Post Like Dislike',
      apiUrl: '${baseUrl}api/user/post/like/${id}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer ${authToken}',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Dating Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
