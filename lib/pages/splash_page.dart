import 'package:flutter/material.dart';
import 'package:shopify_app/pages/master_page.dart';

import 'package:shopify_app/services/prefrences.service.dart';

import 'authpage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    checkUser();
    super.initState();
  }

  void checkUser() async {
    await Future.delayed(const Duration(milliseconds: 500));
    var result = PrefrencesService.prefs?.get('user');
    if (context.mounted) {
      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => MasterPage()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => AuthPage()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator()],
        ),
      ),
    );
  }
}
