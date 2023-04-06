import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIcrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamAIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIcrementState());
    } else if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIcrementState());
    }
  }

  void clear() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterClearState());
  }
}
