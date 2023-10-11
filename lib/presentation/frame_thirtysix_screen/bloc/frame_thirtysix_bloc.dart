import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:maheen_s_application1/presentation/frame_thirtysix_screen/models/frame_thirtysix_model.dart';
part 'frame_thirtysix_event.dart';
part 'frame_thirtysix_state.dart';

/// A bloc that manages the state of a FrameThirtysix according to the event that is dispatched to it.
class FrameThirtysixBloc
    extends Bloc<FrameThirtysixEvent, FrameThirtysixState> {
  FrameThirtysixBloc(FrameThirtysixState initialState) : super(initialState) {
    on<FrameThirtysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThirtysixInitialEvent event,
    Emitter<FrameThirtysixState> emit,
  ) async {
    emit(state.copyWith(
        frameThirtysixModelObj: state.frameThirtysixModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return List.generate(6, (index) => UserprofileItemModel());
  }
}
