import 'package:books/app/notifiers/app_notifier.dart';
import 'package:books/presentation/screens/main_screen.dart';
import 'package:books/app/notifiers/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppNotifier()),
        ChangeNotifierProvider(create: (_) => WishlistModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(textTheme: textTheme),
        home: const MainScreen(),
      ),
    );
  }
}
