import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_api/features/failure.dart';
import 'package:task_api/features/repo/home_rebo.dart';
import 'package:task_api/models/boot_model/boot_model.dart';

import '../api_service.dart';

class HomeReboImple implements HomeRebo {
  final ApiService apiService;

  HomeReboImple(this.apiService);
  @override
  Future<Either<Failure, List<BootModel>>> fetchMostPopularRebositries() async {
    try {
      var data = await apiService.get(
          endPoint: '?q=created:>2019-01-10&sort=popular&order=desc');
      List<BootModel> boots = [];
      for (var item in data['items']) {
        boots.add(BootModel.fromJson(item));
      }
      return right(boots);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.formDioException(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
