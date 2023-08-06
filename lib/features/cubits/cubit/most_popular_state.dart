part of 'most_popular_cubit.dart';

abstract class MostPopularState extends Equatable {
  const MostPopularState();

  @override
  List<Object> get props => [];
}

class MostPopularInitial extends MostPopularState {}

class MostPopularLoading extends MostPopularState {}

class MostPopularSucces extends MostPopularState {
  final List<BootModel> boots;

  const MostPopularSucces(this.boots);
}

class MostPopularFailure extends MostPopularState {
  final String errMessage;

  const MostPopularFailure(this.errMessage);
}
