import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_api/models/boot_model/boot_model.dart';
import '../failure.dart';

abstract class HomeRebo {
  get apiService => null;

  // Future<Either<Failure, List<BootModel>>> fetchMostPopularRebositries();
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
