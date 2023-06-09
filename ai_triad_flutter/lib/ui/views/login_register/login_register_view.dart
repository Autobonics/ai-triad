import 'package:ai_triad/ui/widgets/loginRegister.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_register_viewmodel.dart';

class LoginRegisterView extends StackedView<LoginRegisterViewModel> {
  const LoginRegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginRegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/views/startup.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  'assets/logo.png',
                  height: 150,
                ),
              ),
              LoginRegisterWidget(
                onLogin: viewModel.openLoginView,
                onRegister: viewModel.openRegisterView,
                loginText: "Existing Doctor",
                registerText: "Doctor registration",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginRegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginRegisterViewModel();
}
