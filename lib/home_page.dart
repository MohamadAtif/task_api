import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_api/features/cubits/cubit/most_popular_cubit.dart';

import 'package:task_api/widgets/custom_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.deepPurple),
        body: SafeArea(child: BlocBuilder<MostPopularCubit, MostPopularState>(
          builder: (context, state) {
            // BlocProvider.of<MostPopularCubit>(context)
            //     .fetchMostPopularRebosotries();
            if (state is MostPopularSucces) {
              return ListView.builder(
                itemCount: state.boots.length,
                itemBuilder: (context, index) =>
                    CustomContainer(bootModel: state.boots[index]),
              );
            } else if (state is MostPopularFailure) {
              return const Text('error');
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        )));
  }
}
