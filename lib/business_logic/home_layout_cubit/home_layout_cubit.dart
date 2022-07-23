import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'home_layout_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeLayoutInitial());
}
