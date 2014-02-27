import 'package:angular/angular.dart';
// import 'package:angular/routing/module.dart';
import 'routing/authentication_router.dart';
import 'authentication.dart';

// Temporary, please follow https://github.com/angular/angular.dart/issues/476
@MirrorsUsed(override: '*')
import 'dart:mirrors';


class AppModule extends Module {

  AppModule() {
    type(AuthenticationController);
    value(RouteInitializerFn, authenticationRouteInitializer);
    factory(NgRoutingUsePushState,
        (_) => new NgRoutingUsePushState.value(false));
  }
}

void main() {
  ngBootstrap(module: new AppModule());
}