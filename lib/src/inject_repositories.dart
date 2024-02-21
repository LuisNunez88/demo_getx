import 'config/helpers/injector.dart';
import 'data/datasources/datasources.dart';
import 'data/datasources/remote/helpers/http_client.dart';
import 'data/repositories/repositories_imp.dart';
import 'domain/repositories/repositories.dart';

Future<void> injectRepositories({
  required HttpClient http,
}) async {
  final penkasAPI = PenkasAPI(http);

  Injector.instance.put<PenkasRepository>(
    PenkasRepositoryImp(penkasAPI),
  );
}

class Repositories {
  Repositories._();

  static PenkasRepository get penkasRepository => Injector.I.find();
}
