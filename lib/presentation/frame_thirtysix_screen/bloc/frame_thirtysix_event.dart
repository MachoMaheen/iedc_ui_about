// ignore_for_file: must_be_immutable

part of 'frame_thirtysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FrameThirtysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FrameThirtysixEvent extends Equatable {}

/// Event that is dispatched when the FrameThirtysix widget is first created.
class FrameThirtysixInitialEvent extends FrameThirtysixEvent {
  @override
  List<Object?> get props => [];
}
