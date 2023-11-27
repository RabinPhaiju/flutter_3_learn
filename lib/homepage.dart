import 'package:flutter/material.dart';
import 'package:flutter_learn_377/auth/local_auth.dart';
import 'package:flutter_learn_377/screens/budget_ui/budget_ui.dart';
import 'package:flutter_learn_377/screens/cat_animation.dart';
import 'package:flutter_learn_377/screens/count_down.dart';
import 'package:flutter_learn_377/screens/expense_tracker/expense_tracker.dart';
import 'package:flutter_learn_377/screens/overlay/overlay_page.dart';
import 'package:flutter_learn_377/screens/rotate_widget.dart';
import 'package:flutter_learn_377/screens/splash_screen2/splash.dart';
import 'package:flutter_learn_377/sqflite.dart';
import 'package:flutter_learn_377/url_launcher.dart';
import 'jsonimage/jsonimage.dart';
import 'loginpage/loginpage.dart';
import 'onboardui/onboarding_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }, child: const Text("Login Page"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OnboardingScreen()),
                  );
                }, child: const Text("Onboard ui"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UrlLauncher()),
                  );
                }, child: const Text("Url launcher"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SqfLite()),
                  );
                }, child: const Text("Sqflite"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const JsonImage()),
                  );
                }, child: const Text("Fetch Image Json"),
              ),
              TapRegion(
                onTapOutside: (_)=>print('outsude'),
                onTapInside: (_)=>print('inside'),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CatAnimation()),
                    );
                  }, child: const Text("Cat Animation"),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ExpenseTracker()),
                  );
                }, child: Text("Expense Tracker",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor)),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BudgetUI()),);
                }, child: Text("Budget UI", style: TextStyle(color: Theme.of(context).primaryColor)),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LocalAuth()),
                  );
                }, child: Text("Local Auth",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor)),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RotateWidget()),
                  );
                }, child: const Text("Rotate Image",),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CountDown()),
                  );
                }, child: const Text("Count down.",),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SplashScreen()),
                  );
                }, child: const Text("Splash screen 2.",),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OverlayPage()),
                  );
                }, child: const Text("Overlay",),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
