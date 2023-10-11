// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [frame_thirtysix_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FrameThirtysixModel extends Equatable {
  FrameThirtysixModel({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  FrameThirtysixModel copyWith(
      {List<UserprofileItemModel>? userprofileItemList}) {
    return FrameThirtysixModel(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
