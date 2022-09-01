import 'package:bloc/bloc.dart';
import 'package:demoapp/models/demo_model.dart';
import 'package:demoapp/repositories/demo_repository.dart';
import 'package:equatable/equatable.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final DemoRepository demoRepository;

  DashboardBloc({required this.demoRepository}) : super(DemoLoadingState()) {
    on<LoadDemoEvent>((event, emit) async {
      emit(DemoLoadingState());
      try {
        final result = await demoRepository.getBoredActivity();
        emit(DemoLoadedState(result));
      } catch (e) {
        emit(DemoErrorState(e.toString()));
      }
    });
  }
}
