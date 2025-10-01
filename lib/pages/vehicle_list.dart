import 'package:flutter/material.dart';
import 'vehicleData.dart';
import 'vehicle_detail.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: vehicleList.length,
      itemBuilder: (context, index) {
        final vehicle = vehicleList[index];
        return Card(
          child: ListTile(
            leading: Image.network(
              vehicle.imageUrls[0],
              width: 60,
              fit: BoxFit.cover,
            ),
            title: Text(vehicle.name),
            subtitle: Text(vehicle.type),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VehicleDetail(vehicle: vehicle),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
