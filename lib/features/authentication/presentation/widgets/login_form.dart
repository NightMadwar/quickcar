import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickcar/features/vehicle/presentation/pages/vehicle_list_page.dart';
import '../blocs/auth_bloc.dart';
// import '../../vehicle/presentation/pages/vehicle_list_page.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => VehicleListPage()),
          );
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email")),
              TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: "Password"),
                  obscureText: true),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(LoginRequested(
                    email: _emailController.text,
                    password: _passwordController.text,
                  ));
                },
                child: Text("Login"),
              ),
            ],
          ),
        );
      },
    );
  }
}
