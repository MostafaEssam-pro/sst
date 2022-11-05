import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'vehicle_request_state.dart';

class VehicleRequestCubit extends Cubit<VehicleRequestState> {
  VehicleRequestCubit() : super(VehicleRequestInitial());
}
