// ignore_for_file: must_be_immutable

part of 'frame_thirtysix_bloc.dart';

/// Represents the state of FrameThirtysix in the application.
class FrameThirtysixState extends Equatable {
  FrameThirtysixState({this.frameThirtysixModelObj});

  FrameThirtysixModel? frameThirtysixModelObj;

  @override
  List<Object?> get props => [
        frameThirtysixModelObj,
      ];
  FrameThirtysixState copyWith({FrameThirtysixModel? frameThirtysixModelObj}) {
    return FrameThirtysixState(
      frameThirtysixModelObj:
          frameThirtysixModelObj ?? this.frameThirtysixModelObj,
    );
  }
}
