part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DemoLoadingState extends DashboardState {
  @override
  List<Object> get props => [];
}

class DemoLoadedState extends DashboardState {
  const DemoLoadedState(this.demo);
  final List<DemoModel> demo;

  @override
  List<Object> get props => [demo];
}

class DemoErrorState extends DashboardState {
  const DemoErrorState(this.error);
  final String error;

  @override
  List<Object> get props => [];
}
