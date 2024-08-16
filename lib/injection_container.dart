import 'package:get_it/get_it.dart';
import 'features/authentication/data/data_providers/auth_remote_data_source.dart';
import 'features/authentication/data/repositories/auth_repository_impl.dart';
import 'features/authentication/domain/repositories/auth_repository.dart';
import 'features/authentication/domain/usecases/authenticate_user.dart';
import 'features/authentication/presentation/blocs/auth_bloc.dart';
import 'features/vehicle/data/data_providers/vehicle_remote_data_source.dart';
import 'features/vehicle/data/repositories/vehicle_repository_impl.dart';
import 'features/vehicle/domain/repositories/vehicle_repository.dart';
import 'features/vehicle/domain/usecases/get_vehicles.dart';
import 'features/vehicle/presentation/blocs/vehicle_bloc.dart';
import 'features/booking/data/data_providers/booking_remote_data_source.dart';
import 'features/booking/data/repositories/booking_repository_impl.dart';
import 'features/booking/domain/repositories/booking_repository.dart';
import 'features/booking/domain/usecases/create_booking.dart';
import 'features/booking/presentation/blocs/booking_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(() => AuthBloc(authenticateUser: sl()));
  sl.registerFactory(() => VehicleBloc(getVehicles: sl()));
  sl.registerFactory(() => BookingBloc(createBooking: sl()));

  // Use cases
  sl.registerLazySingleton(() => AuthenticateUser(sl()));
  sl.registerLazySingleton(() => GetVehicles(sl()));
  sl.registerLazySingleton(() => CreateBooking(sl()));

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<VehicleRepository>(
      () => VehicleRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<BookingRepository>(
      () => BookingRepositoryImpl(remoteDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl());
  sl.registerLazySingleton<VehicleRemoteDataSource>(
      () => VehicleRemoteDataSourceImpl());
  sl.registerLazySingleton<BookingRemoteDataSource>(
      () => BookingRemoteDataSourceImpl());
}
