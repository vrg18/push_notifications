import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String apiRNFirebaseIOLink = 'https://api.rnfirebase.io/messaging/send';
const String fcmGoogleApiLink = 'https://fcm.googleapis.com/v1/projects/myproject-push-notification-vrg8/messages:send';

// Dio с опциями и логгером
final PrettyDioLogger dioLogger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 120);

final Dio dioWithOptionsAndLogger = Dio(
  BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ),
)
  ..options.contentType = 'application/json; charset=utf-8'
  ..interceptors.add(dioLogger);
