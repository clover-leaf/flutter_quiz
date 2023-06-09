import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:chicken/data/test_api/test_api.dart'
    show TestDifficulty, TestCategory, TestType, TestDuration;

part 'util_event.dart';
part 'util_state.dart';

class UtilBloc extends Bloc<UtilEvent, UtilState> {
  UtilBloc(
      {required List<TestDifficulty> difficultyList,
      required List<TestCategory> categoryList,
      required List<TestType> typeList})
      : super(UtilState(
            categoryList: categoryList,
            difficultyList: difficultyList,
            typeList: typeList,
            categoryIndex: 0,
            difficultyIndex: 0,
            typeIndex: 0,
            seletecTab: 0,
            duration: TestDuration.fromSecond(60),
            amount: 10)) {
    on<ChangeCategory>(_onChangeCategory);
    on<ChangeDifficulty>(_onChangeDifficulty);
    on<ChangeType>(_onChangeType);
    on<ChangeAmount>(_onChangeAmount);
    on<ChangeDuration>(_onChangeDuration);
    on<ChangeTab>(_onChangeTab);
  }

  void _onChangeCategory(ChangeCategory event, Emitter<UtilState> emit) {
    emit(state.copyWith(categoryIndex: event.index));
  }

  void _onChangeDifficulty(ChangeDifficulty event, Emitter<UtilState> emit) {
    emit(state.copyWith(difficultyIndex: event.index));
  }

  void _onChangeType(ChangeType event, Emitter<UtilState> emit) {
    emit(state.copyWith(typeIndex: event.index));
  }
  void _onChangeDuration(ChangeDuration event, Emitter<UtilState> emit) {
    emit(state.copyWith(duration: event.duration));
  }
  void _onChangeAmount(ChangeAmount event, Emitter<UtilState> emit) {
    emit(state.copyWith(amount: event.amount));
  }
  void _onChangeTab(ChangeTab event, Emitter<UtilState> emit) {
    emit(state.copyWith(seletecTab: event.tabIndex));
  }
}
