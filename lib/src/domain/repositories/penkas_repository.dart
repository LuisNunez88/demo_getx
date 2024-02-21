import '../entities/either.dart';
import '../entities/penka_public.dart';
import '../entities/penka_template.dart';
import '../failures/failure.dart';

abstract class PenkasRepository {
  Future<Either<Failure, List<PenkaPublic>>> getPenkas();
  Future<Either<Failure, List<PenkaTemplate>>> getTemplates();
}
