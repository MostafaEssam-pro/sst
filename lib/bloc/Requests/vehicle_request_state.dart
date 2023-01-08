part of 'vehicle_request_cubit.dart';

@immutable
abstract class VehicleRequestState {}

class VehicleRequestInitial extends VehicleRequestState {}

class VehicleRequestGetSuccessState extends VehicleRequestState {}
class VehicleRequestGetLoadingState extends VehicleRequestState {}
class VehicleRequestGetErrorState extends VehicleRequestState {}