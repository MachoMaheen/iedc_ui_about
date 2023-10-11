import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listworkshops_item_model.dart';
import '../models/aiinmentalhealt_item_model.dart';
import 'package:maheen_s_application1/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<ListworkshopsItemModel> fillListworkshopsItemList() {
    return List.generate(4, (index) => ListworkshopsItemModel());
  }

  List<AiinmentalhealtItemModel> fillAiinmentalhealtItemList() {
    return List.generate(3, (index) => AiinmentalhealtItemModel());
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            listworkshopsItemList: fillListworkshopsItemList(),
            aiinmentalhealtItemList: fillAiinmentalhealtItemList())));
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.frameThirtysixScreen,
      );
    });
  }
}
