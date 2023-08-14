import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api/features/cubits/cubit/most_popular_cubit.dart';

import 'package:task_api/widgets/custom_container.dart';
import 'package:task_api/widgets/custom_dropdownmenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedItem = 10;
  int? drobdownvaluehome = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurple),
        floatingActionButton: CustomDropDownMenu(
          dropdownValue: drobdownvaluehome,
          onChanged: _dropdownCallback,
          ontap: () {
            setState(() {
              drobdownvaluehome;
            });
          },
        ),
        body: SafeArea(
          child: BlocBuilder<MostPopularCubit, MostPopularState>(
            builder: (context, state) {
              if (state is MostPopularSucces) {
                return ListView.builder(
                  itemCount: drobdownvaluehome ?? state.boots.length,
                  itemBuilder: (context, index) =>
                      CustomContainer(bootModel: state.boots[index]),
                );
              } else if (state is MostPopularFailure) {
                return const Text('error');
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ));
  }

  void _dropdownCallback(int? value) {
    if (value is int) {
      setState(() {
        drobdownvaluehome = value;
      });
    }
  }
}
