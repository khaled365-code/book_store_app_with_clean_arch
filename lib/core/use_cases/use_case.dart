

import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class UseCases<Type>
{
  Future<Either<Failure,Type>>call();


}
