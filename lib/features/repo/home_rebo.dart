import 'package:dartz/dartz.dart';
import 'package:task_api/models/boot_model/boot_model.dart';
import '../failure.dart';

abstract class HomeRebo {
  Future<Either<Failure, List<BootModel>>> fetchMostPopularRebositries();
}
