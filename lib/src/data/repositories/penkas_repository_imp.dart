import '../../domain/entities/either.dart';
import '../../domain/entities/penka_public.dart';
import '../../domain/entities/penka_template.dart';
import '../../domain/failures/failure.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../datasources/remote/helpers/result_handler.dart';

class PenkasRepositoryImp extends PenkasRepository {
  final PenkasAPI _penkasAPI;

  PenkasRepositoryImp(this._penkasAPI);

  @override
  Future<Either<Failure, List<PenkaPublic>>> getPenkas() async {
    try {
      final response = await _penkasAPI.getPenkas();
      return resultHandler<List<PenkaPublic>>(response);
    } catch (e) {
      return Either.left(Failure.unknown(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<PenkaTemplate>>> getTemplates() async {
    try {
      final response = await _penkasAPI.getTemplates();
      return resultHandler<List<PenkaTemplate>>(response);
    } catch (e) {
      return Either.left(Failure.unknown(e.toString()));
    }
  }
}
