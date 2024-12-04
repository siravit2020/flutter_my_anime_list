import 'package:flutter_my_anime_list/shared/exceptions/app_exception.dart';
import 'package:fpdart/fpdart.dart';

abstract class UseCase<T, Params> {
  Future<Either<AppException, T>> call({Params params});
}

class NoParams {}
