part of "main.dart";

final GoRouter _router = GoRouter(
  //FIXME change back to '/welcome'
  initialLocation: '/crypto/list',
  routes: [
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            NavScaffold(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                  name: 'test',
                  path: '/test',
                  builder: (context, state) => ExamplePage(),
                  routes: [],
              ),
              GoRoute(
                  name: 'welcome',
                  path: '/welcome',
                  builder: (context, state) => WelcomePage(),
                  routes: []
              ),
              GoRoute(
                  name: 'login',
                  path: '/login',
                  builder: (context, state) {
                    return LoginRegisterPage(isLogin: true,);
                  },
                  routes: []
              ),
              GoRoute(
                  name: 'register',
                  path: '/register',
                  builder: (context, state) {
                    return LoginRegisterPage(isLogin: false,);
                  },
                  routes: []
              ),
              GoRoute(
                  name: 'crypto',
                  path: '/crypto',
                  redirect: (_, __) => null,
                  routes: [
                    GoRoute(
                        name: 'list',
                        path: '/list',
                        builder: (context, state) {
                          return CryptoListPage();
                        },
                        routes: []
                    ),
                    GoRoute(
                        name: 'chart',
                        path: '/chart',
                        builder: (context, state) {
                          final coin = state.extra as Coin;
                          return CryptoChartPage(coin: coin,);
                        },
                        routes: []
                    ),
                    GoRoute(
                        name: 'favourite',
                        path: '/favourite',
                        builder: (context, state) {
                          return CryptoFavList();
                        },
                        routes: []
                    ),
                  ]
              ),
            ],
          ),
        ])
    // GoRoute(
    //   name: 'details',
    //   path: '/details',
    //   builder: (context, state) {
    //     // Retrieve the passed object
    //     final person = state.extra as Person;
    //     return DetailsScreen(person: person);
    //   },
    // ),
  ],
);


