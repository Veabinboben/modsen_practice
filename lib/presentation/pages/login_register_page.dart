
import 'package:flashy_flushbar/flashy_flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modsen_practice/presentation/blocs/login_register_bloc.dart';
import 'package:modsen_practice/presentation/widgets/loading_overlay.dart';

class LoginRegisterPage extends StatelessWidget {
  LoginRegisterPage({this.isLogin = true,super.key});

  final bool isLogin;
  late final LoginRegisterBloc bloc;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) return "Email can't be empty";
    final emailRegEx = RegExp(r'[\w\-\.]+@([\w\-]+\.)+[\w\-]+');
    var res = emailRegEx.hasMatch(value);
    if (res == false) {
      return "Invalid email format";
    } else
      return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) return "Password can't be empty";
    var res = value.length >= 6;
    if (res == false)
      return "Too short";
    else
      return null;
  }

  void buttonAction () {
    var res = _formKey.currentState!.validate();
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

  FlashyFlushbar flushbar (String message, BuildContext context) => FlashyFlushbar(
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    message: message,
    messageStyle: DefaultTextStyle.of(context).style,
    trailingWidget: IconButton(onPressed: (){FlashyFlushbar.cancel();}, icon: Icon(Icons.close)),
    duration: Duration(seconds: 2),
    isDismissible: false
  );


  @override
  Widget build(BuildContext context) {
    // TODO: probably should place it in some other place,
    //  maybe init state (so convert to stfl)
    bloc = BlocProvider.of<LoginRegisterBloc>(context);

    final appBarText = isLogin == true? "Log In" : "Register";
    final welcomeText = isLogin == true? "Provide credentials \n to log in" : "Let's create \n your account";

    return BlocConsumer<LoginRegisterBloc, LoginRegisterState>(
      bloc: bloc,
      listener: (context, state) {
        //flushbar("hello",context).show();
        if (state is WaitingReplyState) LoadingOverlay.show(context);
          else LoadingOverlay.hide();
        switch (state) {
          case SuccessfulLogInState():
            context.go('/test');
            break;
          case SuccessfulRegisterState():
            context.go('/welcome');
            break;
          case InvalidFormState():
            flushbar("Invalid email or password, check fields",context).show();
            break;
          case FailedRegisterState():
            flushbar("Could not register, check internet connection",context).show();
            break;
          case FailedLogInState():
            flushbar("Could not log in, check internet connection",context).show();
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title:  Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(appBarText),
                      Hero(tag: 'Logo', child: Image.asset("assets/splash.png",scale: 16,),),
                      IconButton(onPressed: (){
                        context.pop();
                      }, icon: Icon(Icons.arrow_back))
                    ],
                  )
              ),
            ),
            body: SingleChildScrollView(
              reverse: true,
              child: Container(
                height: MediaQuery.of(context).size.height - 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(welcomeText, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter your email adress"
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
                        decoration: InputDecoration(
                            hintText: "Enter password"
                        ),
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        //autovalidateMode: AutovalidateMode.always,
                        validator: passwordValidator,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: buttonAction,
                      child: Ink(height: 50, color: Colors.blue,
                        child: Center(child: Text(appBarText)),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
