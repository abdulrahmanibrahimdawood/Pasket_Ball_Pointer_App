import 'package:basket_ball_pointer/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int TeamAPointes = 0;
  int TeamBPointes = 0;

  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      TeamAPointes += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      TeamBPointes += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
