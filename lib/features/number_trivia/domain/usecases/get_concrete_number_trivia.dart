import 'package:dartz/dartz.dart';
import 'package:number_trivia/core/error/failure.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:number_trivia/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  GetConcreteNumberTrivia({required this.repository});
  final NumberTriviaRepository repository;

  Future<Either<Failure, NumberTrivia>> execute({required int number}) {
    return repository.getConcreteNumberTrivia(number);
  }
}
