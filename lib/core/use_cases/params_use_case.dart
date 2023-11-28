

import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class ParamsUseCases<Type,params>
{
  Future<Either<Failure,Type>>call(params params);


}