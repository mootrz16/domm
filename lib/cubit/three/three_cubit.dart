import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project1/cubit/three/three_states.dart';
class ThreeCubit extends Cubit<ThreeStates> {
  ThreeCubit() : super(ThreeInitialState());

  static ThreeCubit get(context) {
    return BlocProvider.of(context);
  }



}