import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'services/app_state.dart';
import 'theme.dart';
import 'screens/login_screen.dart';
import 'screens/home_feed_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await AppState.instance.init();
  } catch (e, st) {
    debugPrint('Init failed: $e\n$st');
    // يمكن عرض شاشة خطأ بدلاً من ذلك
  }
  runApp(const SawtakApp());
}

class SawtakApp extends StatelessWidget {
  const SawtakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'صوتك',
      debugShowCheckedModeBanner: false,
      theme: sawtakTheme(),
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: (context, child) => Directionality(
        textDirection: TextDirection.rtl,
        child: child ?? const SizedBox.shrink(),
      ),
      home: ListenableBuilder(
        listenable: AppState.instance,
        builder: (context, _) {
          return AppState.instance.currentUser == null
              ? const LoginScreen()
              : const HomeFeedScreen();
        },
      ),
    );
  }
}
