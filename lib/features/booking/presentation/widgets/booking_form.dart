import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickcar/features/booking/domain/entities/booking.dart';
import '../blocs/booking_bloc.dart';

class BookingForm extends StatelessWidget {
  final String vehicleId;

  BookingForm({required this.vehicleId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookingBloc, BookingState>(
      listener: (context, state) {
        if (state is BookingSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Booking Successful!")));
        } else if (state is BookingError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        if (state is BookingLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            Text("Booking vehicle with ID: $vehicleId"),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<BookingBloc>(context).add(SubmitBooking(
                  booking: Booking(
                    id: "booking_id",
                    vehicleId: vehicleId,
                    startDate: DateTime.now(),
                    endDate: DateTime.now().add(Duration(days: 3)),
                  ),
                ));
              },
              child: Text("Confirm Booking"),
            ),
          ],
        );
      },
    );
  }
}
