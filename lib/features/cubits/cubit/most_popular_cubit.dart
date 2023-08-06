import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:task_api/models/boot_model/boot_model.dart';

import '../../repo/home_rebo.dart';

part 'most_popular_state.dart';

class MostPopularCubit extends Cubit<MostPopularState> {
  MostPopularCubit(this.homeRebo) : super(MostPopularInitial());

  final HomeRebo homeRebo;
  Future<void> fetchMostPopularRebosotries() async {
    emit((MostPopularLoading()));
    var result = await homeRebo.fetchMostPopularRebositries();
    result.fold(
        (failure) => () {
              emit(MostPopularFailure(failure.errmessage));
            },
        (boots) => () {
              emit(MostPopularSucces(boots));
            });
  }
}
