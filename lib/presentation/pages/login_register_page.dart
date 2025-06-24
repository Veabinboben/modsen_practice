
import 'package:flashy_flushbar/flashy_flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import 'package:modsen_practice/presentation/blocs/auth_cubit.dart';
import 'package:modsen_practice/presentation/blocs/login_register_bloc.dart';
import 'package:modsen_practice/presentation/widgets/loading_overlay.dart';

import '../../data/models/user_model.dart';
import '../../domain/repository/abstract_login_register_repo.dart';

class LoginRegisterPage extends StatelessWidget {
  LoginRegisterPage({this.isLogin = true,super.key});

  final bool isLogin;
  // TODO maybe init differently
  final getIt = GetIt.instance;
  late final LoginRegisterBloc bloc = LoginRegisterBloc(getIt.get<AbstractLoginRegisterRepo>());
  late final AuthCubit authCubit;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Email can't be empty";
    }
    final RegExp emailRegEx = RegExp(r'[\w\-\.]+@([\w\-]+\.)+[\w\-]+');
    final bool res = emailRegEx.hasMatch(value);
    if (res == false) {
      return 'Invalid email format';
    } else {
      return null;
    }
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Password can't be empty";
    }
    final bool res = value.length >= 6;
    if (res == false) {
      return 'Too short';
    } else {
      return null;
    }
  }

  void buttonAction () {
    final bool res = _formKey.currentState!.validate();
    if(isLogin == true) {
      bloc.add(
        TryLogInEvent(
          _emailController.text,
          _passwordController.text,
          res,
        ),
      );
    }
    else {
      bloc.add(
        TryRegisterEvent(
          _emailController.text,
          _passwordController.text,
          res,
        ),
      );
    }
  }

  FlashyFlushbar flushbar (String message, BuildContext context) =>
      FlashyFlushbar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    message: message,
    messageStyle: DefaultTextStyle.of(context).style,
    trailingWidget: const IconButton(onPressed: FlashyFlushbar.cancel,
        icon: Icon(Icons.close)),
    duration: const Duration(seconds: 2),
    isDismissible: false
  );


  @override
  Widget build(BuildContext context) {
    // TODO: probably should place it in some other place,
    //  maybe init state (so convert to stfl)

    authCubit = BlocProvider.of<AuthCubit>(context);

    final String appBarText = isLogin == true? 'Log In' : 'Register';
    final String welcomeText = isLogin == true?
    ' Provide credentials \n to log in' :
    " Let's create \n your account";

    return BlocListener(
      bloc: authCubit,
      listener: (context,state){
        switch (state){
          case LoggedInState():
            context.go('/crypto/list');
            break;
        }
      },
      child: BlocConsumer<LoginRegisterBloc, LoginRegisterState>(
        bloc: bloc,
        listener: (BuildContext context, LoginRegisterState state) {
          //flushbar("hello",context).show();
          if (state is WaitingReplyState) {
            LoadingOverlay.show(context);
          } else {
            LoadingOverlay.hide();
          }
          switch (state) {
            case SuccessfulLogInState():
              // context.go('/test');
              final user = User(_emailController.text,
                _passwordController.text);
              authCubit.login(user);
              break;
            case SuccessfulRegisterState():
              flushbar('Successful Registration!, try logging in now',context).show();
              context.go('/welcome');
              break;
            case InvalidFormState():
              flushbar('Invalid email or password, check fields',context).show();
              break;
            case FailedRegisterState():
              flushbar('Could not register, check internet connection',context).show();
              break;
            case FailedLogInState():
              flushbar('Could not log in, verify credentials and check internet connection',context).show();
              break;
            default:
              break;
          }
        },
        builder: (BuildContext context, LoginRegisterState state) {
          return Form(
            key: _formKey,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                title:  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(appBarText),
                        Hero(tag: 'Logo', child: Image.asset('assets/splash.png',scale: 16,),),
                        IconButton(onPressed: (){
                          context.pop();
                        }, icon: const Icon(Icons.arrow_back))
                      ],
                    )
                ),
              ),
              body: SingleChildScrollView(
                reverse: true,
                child: Builder(
                  builder: (context) {
                    final height = MediaQuery.of(context).size.height - Scaffold.of(context).appBarMaxHeight!-50;
                    return Container(
                      //TODO test
                      height: height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(welcomeText, style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Enter your email adress'
                              ),
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              //autovalidateMode: AutovalidateMode.always,
                              validator: emailValidator,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  hintText: 'Enter password'
                              ),
                              controller: _passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              //autovalidateMode: AutovalidateMode.always,
                              validator: passwordValidator,
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: buttonAction,
                            child: Ink(height: 50, color: Colors.blue,
                              child: Center(child: Text(appBarText)),),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
