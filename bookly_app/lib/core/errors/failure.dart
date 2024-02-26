import 'package:dio/dio.dart';

class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errMessage: 'Connection time out with api service');
      case DioExceptionType.sendTimeout:
        return ServerFailure(
            errMessage: 'Send time out with api service');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errMessage: 'Receive time out with api service');
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errMessage: 'Bad Certificate with api service');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
            
      case DioExceptionType.cancel:
        return ServerFailure(
            errMessage: 'Cancel  with api service');
      case DioExceptionType.connectionError:
        return ServerFailure(
            errMessage: 'Request to api service was canceled');
      case DioExceptionType.unknown:
        return ServerFailure(
            errMessage: 'Unexpected Error , plz try later!');
            default:
            return  ServerFailure(errMessage: 'Oops there was an error, plz try later!');

      
    }

    
  }
  factory ServerFailure.fromResponse(int? statusCode , dynamic response){
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
      
    }else if (statusCode==404){
      return ServerFailure(errMessage: 'Your request not found, plz try later!');
    }else if (statusCode==500){
      return ServerFailure(errMessage: 'Internal server error, plz try later!');
    }else {
      return ServerFailure(errMessage: 'Oops there was an error, plz try later!');
    }
  }
}
