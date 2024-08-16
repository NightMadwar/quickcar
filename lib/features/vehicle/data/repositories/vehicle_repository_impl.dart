import 'package:dartz/dartz.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/vehicle.dart';
import '../../domain/repositories/vehicle_repository.dart';
import '../data_providers/vehicle_remote_data_source.dart';

class VehicleRepositoryImpl implements VehicleRepository {
  final VehicleRemoteDataSource remoteDataSource;

  VehicleRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Vehicle>>> getVehicles() async {
    try {
      final vehicles = await remoteDataSource.getVehicles();
      return Right(vehicles);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
