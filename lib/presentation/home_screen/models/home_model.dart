// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listworkshops_item_model.dart';
import 'aiinmentalhealt_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.listworkshopsItemList = const [],
    this.aiinmentalhealtItemList = const [],
  }) {}

  List<ListworkshopsItemModel> listworkshopsItemList;

  List<AiinmentalhealtItemModel> aiinmentalhealtItemList;

  HomeModel copyWith({
    List<ListworkshopsItemModel>? listworkshopsItemList,
    List<AiinmentalhealtItemModel>? aiinmentalhealtItemList,
  }) {
    return HomeModel(
      listworkshopsItemList:
          listworkshopsItemList ?? this.listworkshopsItemList,
      aiinmentalhealtItemList:
          aiinmentalhealtItemList ?? this.aiinmentalhealtItemList,
    );
  }

  @override
  List<Object?> get props => [listworkshopsItemList, aiinmentalhealtItemList];
}
