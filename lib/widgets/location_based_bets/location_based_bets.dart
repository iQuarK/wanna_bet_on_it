import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wanna_bet_on_it/classes/bet.dart';
import 'package:wanna_bet_on_it/data/bet/bet_json.dart';
import 'package:wanna_bet_on_it/styles/colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../../components/title_section.dart';

class LocationBasedBets extends StatefulWidget {
  const LocationBasedBets({super.key});

  @override
  State<LocationBasedBets> createState() => _LocationBasedBetsState();
}

class _LocationBasedBetsState extends State<LocationBasedBets> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TitleSection(title: "Location Based Bets"),
              Container(
                color: Colors.purple,
                height: 500,
                width: 300,
                child: FlutterMap(
                  options: const MapOptions(
                    initialCenter: LatLng(51.509364, -0.128928),
                    initialZoom: 13,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      userAgentPackageName: 'com.example.app',
                    ),
                    const MarkerLayer(
                      markers: [
                        Marker(
                            point: LatLng(51.509364, -0.13),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.redAccent,
                              size: 50,
                            )),
                        Marker(
                            point: LatLng(51.509364, -0.12),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.cyanAccent,
                              size: 50,
                            )),
                        Marker(
                            point: LatLng(51.507364, -0.11),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.pin_drop,
                              color: Colors.blueAccent,
                              size: 50,
                            )),
                      ],
                    ),
                    RichAttributionWidget(
                      attributions: [
                        TextSourceAttribution('OpenStreetMap contributors',
                            onTap: () => print('tapped map')),
                      ],
                    ),
                  ],
                ),
              )
            ] // Go
            ));
  }
}
