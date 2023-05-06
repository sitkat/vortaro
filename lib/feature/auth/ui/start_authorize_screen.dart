import 'package:flutter/material.dart';
import 'package:vortaro/app/ui/components/app_button.dart';
import 'package:vortaro/app/ui/components/app_router/app_router_constants.dart';

class StartAuthorizeScreen extends StatelessWidget {
  const StartAuthorizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // TODO: Запретить где только можно pop
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                  ),
                  child: Image.asset(
                    'assets/images/flagEsp.png',
                  ),
                ),
              ),
              Text(
                "Имей больше возможностей с Vortaro",
                style: theme.textTheme.labelMedium,
              ),
              const Text("Присоединяйся сейчас и пользуйся расширенными возможностями приложения", textAlign: TextAlign.center,),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                      onPressed: () {
                        Navigator.pushNamed(context, loginScreenRoute);
                      },
                      text: "Авторизоваться"),
                  const SizedBox(width: 10),
                  AppButton(
                      onPressed: () {
                        Navigator.pushNamed(context, registerScreenRoute);
                      },
                      text: "Зарегистрироваться"),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(color: Colors.black, thickness: 0.7,),
              const SizedBox(height: 10),
              // InkWell(
              //   focusColor: Colors.grey,
              //   onTap: () {},
              //   child: Row(
              //     children: const [
              //       Icon(Icons.settings),
              //       SizedBox(width: 5),
              //       Text("Настройки"),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 5),
              InkWell(
                focusColor: Colors.grey,
                onTap: () {},
                child: Row(
                  children: const [
                    Icon(Icons.question_mark),
                    SizedBox(width: 5),
                    Text("Помощь"),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              InkWell(
                focusColor: Colors.grey,
                onTap: () {},
                child: Row(
                  children: const [
                    Icon(Icons.info),
                    SizedBox(width: 5),
                    Text("О нас"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
