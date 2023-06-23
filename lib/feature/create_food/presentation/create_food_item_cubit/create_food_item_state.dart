part of 'create_food_item_cubit.dart';

abstract class CreateFoodItemState extends Equatable {
  const CreateFoodItemState();

  @override
  List<Object> get props => [];
}

class CreateFoodItemInitial extends CreateFoodItemState {}

class CreateFoodItemLoading extends CreateFoodItemState {}

class CreateFoodItemError extends CreateFoodItemState {}
