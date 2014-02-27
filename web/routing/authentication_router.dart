library authentication_routing;

import 'package:angular/angular.dart';

authenticationRouteInitializer(Router router, ViewFactory views) =>
    views.configure({
      'login': ngRoute(
          path: '/login',
          view: 'view/login.html')
    });