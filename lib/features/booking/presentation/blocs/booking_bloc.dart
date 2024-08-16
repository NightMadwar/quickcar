import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/booking.dart';
import '../../domain/usecases/create_booking.dart';
import '../../../../core/error/failure.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final CreateBooking createBooking;

  BookingBloc({required this.createBooking}) : super(BookingInitial()) {
    on<SubmitBooking>(_onSubmitBooking);
  }

  void _onSubmitBooking(SubmitBooking event, Emitter<BookingState> emit) async {
    emit(BookingLoading());

    final failureOrBooking = await createBooking(
      BookingParams(booking: event.booking),
    );

    emit(failureOrBooking.fold(
      (failure) => BookingError(message: _mapFailureToMessage(failure)),
      (booking) => BookingSuccess(booking: booking),
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
