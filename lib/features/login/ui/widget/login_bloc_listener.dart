import 'package:doctor_app/core/routing/extention.dart';
import 'package:doctor_app/core/routing/name_router.dart';
import 'package:doctor_app/core/theme/colors.dart';
import 'package:doctor_app/core/theme/style.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_cubit.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginCubitState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              showDialog(
                  context: context,
                  builder: (context) => const Center(
                        child: CircularProgressIndicator(
                          color: ColorsManager.mainBlue,
                        ),
                      ));
            },
            success: (loginResponse) {
              context.pop();

              context.pushNamed(Routes.homePage);
            },
            error: (error) {
              setupErrorState(context, error);
            },
          );
        },
        child: SizedBox.shrink());
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font13BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
