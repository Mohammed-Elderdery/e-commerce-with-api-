import 'package:fake_api_store/feuaters/home_page_view/presentation/home_view.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    goToNextView();
    super.initState();
  }

  goToNextView() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeView()));
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'TRENDISE',
          style: TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
