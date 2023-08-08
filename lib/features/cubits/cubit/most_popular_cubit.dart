import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:task_api/models/boot_model/boot_model.dart';

import '../../repo/home_rebo.dart';

part 'most_popular_state.dart';

class MostPopularCubit extends Cubit<MostPopularState> {
  MostPopularCubit(this.homeRebo) : super(MostPopularInitial());
  var dio = Dio();
  final HomeRebo homeRebo;

  void fetchMostPopularRebosotries() async {
    var result = await homeRebo.fetchMostPopularRebositries();
    result.fold((failure) {
      print('fetchfail');
      emit(MostPopularFailure(failure.errmessage));
    }, (boots) {
      print('fetchsucces');

      emit(MostPopularSucces(boots));
    });
    print('fetchstart');
  }
}
