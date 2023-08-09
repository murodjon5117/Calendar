import 'package:custom_calendar/core/data/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


abstract class BaseUseCase<T, P> {
  Future<Either<Failure, T>> call(P p);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object?> get props => [];
}
