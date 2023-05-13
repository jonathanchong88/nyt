import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nyt/core/core.dart';

class ServicesInitializer {
  ServicesInitializer._();

  static final ServicesInitializer instance = ServicesInitializer._();

  late ProviderContainer container;

  init(WidgetsBinding widgetsBinding, ProviderContainer container) async {
    this.container = container;
    await container.read(databaseServiceProvider).init();
    //Init FirebaseApp instance before runApp
    //This Prevent closing splash screen until we finish initializing our services.
    //App layout will be built but not displayed.
    widgetsBinding.deferFirstFrame();
    widgetsBinding.addPostFrameCallback((_) async {
      //   //Run any function you want to wait for before showing app layout
      await initializeServices(); //init services at custom splash
      //   // _initializeServicesRef();
      //   // Closes splash screen, and show the app layout.
      widgetsBinding.allowFirstFrame();
    });
  }

  initializeServices() async {
    //await _initFirebase();
    // await _initEasyLocation();
    // _initPreferOrientation();
    // await _initStorageService();
    await _initConnectivity();
    // await _initFileStorageService();
    // if (FlavorConfig.isPROD() || FlavorConfig.isSTAG()) {
    //   await _initSentryService();
    // }
    // await DeviceInfoService.instance.init();
    //_initSocketService();
    // await _initNotificationSettings();
    // await _initFirebaseMessaging();
    // await _initPushNotification();
  }

  // _initPushNotification() {
  //   PushNotificationService.instance.init();
  // }

  _initPreferOrientation() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  // _initEasyLocation() {
  //   EasyLocalization.logger.printer = customEasyLogger;
  // }

  // _initSentryService() async {
  //   await SentryFlutter.init(
  //     (options) {
  //       options
  //         ..dsn = AppStrings.sentryDSN
  //         // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
  //         // We recommend adjusting this value in production.
  //         ..tracesSampleRate = 1.0
  //         ..environment = FlavorConfig.instance.flavor.tagName;
  //     },
  //   );
  // }

  // _initStorageService() async {
  //   await KeyValueStorageBase.init();
  // }

  // _initDatabaseService() async {}

  _initConnectivity() async {
    container.read(networkInfoProvider).init();
  }

  // _initFileStorageService() {
  //   container.read(fileLocalStoreServiceProvider).init();
  // }

  // _initNotificationSettings() async {
  //   await LocalNotificationService(container).init();
  // }

  //
  // _initFirebaseMessaging() async {
  //   await FirebaseMessagingService.instance.init();
  // }
}
