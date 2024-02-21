enum Routes {
  root(
    path: '/',
    name: 'splashPage',
  ),
  login(
    path: '/login',
    name: 'loginPage',
  ),
  home(
    path: '/main',
    name: 'mainPage',
  ),
  penkas(
    path: '/my-penkas',
    name: 'penkasPage',
  ),
  createPenka(
    path: '/create-penkas',
    name: 'createPenkaPage',
  ),
  explore(
    path: '/discover',
    name: 'explorePage',
  );

  const Routes({required this.path, required this.name});

  final String path;
  final String name;
}
