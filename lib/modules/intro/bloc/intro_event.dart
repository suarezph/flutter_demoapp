part of 'intro_bloc.dart';

abstract class IntroEvent extends Equatable {
  const IntroEvent();

  @override
  List<Object> get props => [];
}

class IntroStarted extends IntroEvent {
  const IntroStarted();

  @override
  List<Object> get props => [];
}

class IntroSetStorageEvent extends IntroEvent {
  final bool value;
  const IntroSetStorageEvent({required this.value});

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Intro {$value}';
}
