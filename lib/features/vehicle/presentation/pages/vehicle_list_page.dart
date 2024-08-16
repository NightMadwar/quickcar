import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/vehicle_bloc.dart';
import '../widgets/vehicle_list.dart';
import '../../../../injection_container.dart';

class VehicleListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vehicles")),
      body: BlocProvider(
        create: (_) => sl<VehicleBloc>()..add(FetchVehicles()),
        child: VehicleList(),
      ),
    );
  }
}
