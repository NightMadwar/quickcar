import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/vehicle.dart';
import '../../domain/usecases/get_vehicles.dart';
import '../../../../core/error/failure.dart';

part 'vehicle_event.dart';
part 'vehicle_state.dart';

class VehicleBloc extends Bloc<VehicleEvent, VehicleState> {
  final GetVehicles getVehicles;

  VehicleBloc({required this.getVehicles}) : super(VehicleInitial()) {
    on<FetchVehicles>(_onFetchVehicles);
  }

  void _onFetchVehicles(FetchVehicles event, Emitter<VehicleState> emit) async {
    emit(VehicleLoading());

    final failureOrVehicles = await getVehicles();

    emit(failureOrVehicles.fold(
      (failure) => VehicleError(message: _mapFailureToMessage(failure)),
      (vehicles) => VehicleLoaded(vehicles: vehicles),
    ));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server Failure';
      default:
        return 'Unexpected Error';
    }
  }
}
