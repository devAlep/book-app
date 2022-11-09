import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/util/prefs_utils.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final token = await PrefsUtils.getToken();
  debugPrint('token: $token');
  runApp( MyApp(token: token,),);
}

class MyApp extends StatelessWidget {
  const MyApp( {Key? key, required this.token}) : super(key: key);

  final String token;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoodReads',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        scaffoldBackgroundColor: const Color(0xff1D212B),
        primaryColor: const Color(0xff1D212B),
      ),
      home: token.isNotEmpty ? const HomePage() : const LoginPage(),
    );
  }
}
