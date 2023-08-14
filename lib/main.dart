import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api/features/api_service.dart';

import 'package:task_api/features/repo/homerebo_implem.dart';
import 'package:task_api/spalsh.dart';
import 'features/cubits/cubit/most_popular_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MostPopularCubit(
            HomeReboImple(
              ApiService(
                Dio(),
              ),
            ),
          )..fetchMostPopularRebosotries(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'taskApi',
        home: Splash(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
