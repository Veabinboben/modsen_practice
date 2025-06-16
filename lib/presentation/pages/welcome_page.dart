import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/login_register_bloc.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  late AnimationController _moveController;
  late Animation _moveAnimation;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;
  late final LoginRegisterBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = BlocProvider.of<LoginRegisterBloc>(context);
    bloc.add(TryQuickLogInEvent());

    _moveController = AnimationController(duration: Duration(seconds: 1),vsync: this);
    _moveAnimation = Tween<double>(begin: 0, end: 300).animate(CurvedAnimation(parent: _moveController, curve: Curves.easeOut));

    _fadeController = AnimationController(duration: Duration(milliseconds: 500),vsync: this);
    _fadeAnimation = CurvedAnimation(parent: _fadeController, curve: Curves.easeOut);

    _moveController.forward().whenComplete((){_fadeController.forward();});
  }

  @override
  void dispose() {
    _moveController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _moveController,
      builder: (context, _) {
        return BlocListener(
          bloc: bloc,
          listener: (context,state){
            switch (state){
              case SuccessfulLogInState:
                break;
              default:
                break;
            }
          },
          child: Container(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'Logo',
                  child: Image.asset("assets/splash.png", scale: 4),
                ),
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: Container(
                    height: _moveAnimation.value,
                    child: SingleChildScrollView(
                      child: Column(
                        spacing: 10,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                          text: "Hello to Crypto!\n",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                          children: [
                            TextSpan(
                              text: "All your crypto transactions in one place! Track coins, add portfolios, buy & sell",
                              style: DefaultTextStyle.of(context).style,
                            )
                          ]
                        ),),
                        ElevatedButton(
                          onPressed: () {
                            context.push("/login");
                          },
                          child: Text("         Login         "),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context.push("/register");
                          },
                          child: Text("       Register       "),
                        ),
                      ],
                    ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

