import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_food_item_state.dart';

class CreateFoodItemCubit extends Cubit<CreateFoodItemState> {
  CreateFoodItemCubit() : super(CreateFoodItemInitial());
}
