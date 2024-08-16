import '../models/booking_model.dart';
import '../../../../core/error/exceptions.dart';

abstract class BookingRemoteDataSource {
  Future<BookingModel> createBooking(BookingModel booking);
}

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource {
  @override
  Future<BookingModel> createBooking(BookingModel booking) async {
    // Simulate network request with fake data
    await Future.delayed(Duration(seconds: 1)); // Simulate network latency

    return booking;
  }
}
