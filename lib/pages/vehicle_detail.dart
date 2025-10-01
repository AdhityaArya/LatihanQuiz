import 'package:flutter/material.dart';
import 'vehicleData.dart';

class VehicleDetail extends StatelessWidget {
  final Vehicle vehicle;
  const VehicleDetail({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.network(vehicle.imageUrls[0]),
          const SizedBox(height: 16),
          Text(
            vehicle.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(vehicle.type, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text("Engine: ${vehicle.engine}"),
          Text("Fuel Type: ${vehicle.fuelType}"),
          Text(
            "Price: ${vehicle.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(vehicle.description),
          const SizedBox(height: 20),
          const Text(
            "Gallery:",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: vehicle.imageUrls.map((url) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(url),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
