import 'package:get_it/get_it.dart';
import 'package:provider_architecture/core/services/localstorage_service.dart';
import 'package:provider_architecture/core/viewmodels/home_model.dart';
import 'package:provider_architecture/core/viewmodels/onboarding_model.dart';

GetIt locator = GetIt();

Future setupLocator() async {
  var instance = await LocalStorageService.getInstance();
  // register services
  locator.registerSingleton<LocalStorageService>(instance);
  // register the viewmodel
  locator.registerFactory(() => OnboardingModel());
  locator.registerFactory(() => HomeModel());
}
