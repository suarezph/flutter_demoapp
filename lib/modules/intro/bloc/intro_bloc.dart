import 'package:bloc/bloc.dart';
import 'package:demoapp/repositories/device_repository.dart';
import 'package:equatable/equatable.dart';

part 'intro_event.dart';
part 'intro_state.dart';

class IntroBloc extends Bloc<IntroEvent, IntroState> {
  final DeviceRepository deviceRepository;

  IntroBloc(this.deviceRepository) : super(IntroInitial()) {
    on<IntroStarted>((event, emit) async {
      final bool hasIntro = await deviceRepository.hasIntro();
      if (!hasIntro) {
        emit(IntroLoadState());
      } else {
        emit(IntroNextState());
      }
    });
    on<IntroSetStorageEvent>((event, emit) async {
      await deviceRepository.persistIntro(event.value);
      emit(IntroNextState());
    });
  }
}
