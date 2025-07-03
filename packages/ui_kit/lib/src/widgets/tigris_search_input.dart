import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:ui_kit/ui_kit.dart';

class TigrisSearchInput extends StatefulWidget {
  final String googleApiKey;
  final double startLocationLatitude;
  final double startLocationLongitude;
  final void Function(
    double,
    double,
  ) location;
  final void Function(
    double,
  ) totalDistance;

  const TigrisSearchInput({
    required this.googleApiKey,
    required this.location,
    required this.totalDistance,
    this.startLocationLatitude = 0,
    this.startLocationLongitude = 0,
    Key? key,
  }) : super(key: key);

  @override
  State<TigrisSearchInput> createState() => _TigrisSearchInputState();
}

class _TigrisSearchInputState extends State<TigrisSearchInput> {
  double calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) {
    const p = 0.017453292519943295;
    final a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  PolylinePoints polylinePoints = PolylinePoints();

  String locationTitle = 'Search Location';
  PointLatLng location = const PointLatLng(0, 0);

  @override
  Widget build(BuildContext context) {
    widget.location(location.latitude, location.longitude);

    return Container(
      height: 64,
      margin: const EdgeInsets.only(
        right: 16,
        left: 16,
      ),
      child: Material(
        //search input bar
        child: InkWell(
          onTap: () async {
            final List<PointLatLng> polylineCoordinates = [];
            final place = await PlacesAutocomplete.show(
              context: context,
              apiKey: widget.googleApiKey,
              mode: Mode.overlay,
              types: [],
              strictbounds: false,
              components: [],
              //google_map_webservice package
              onError: print,
            );

            if (place != null) {
              locationTitle = place.description.toString();

              //form google_maps_webservice package
              final plist = GoogleMapsPlaces(
                apiKey: widget.googleApiKey,
                apiHeaders: await const GoogleApiHeaders().getHeaders(),
                //from google_api_headers package
              );
              final String placeid = place.placeId ?? '0';
              final detail = await plist.getDetailsByPlaceId(placeid);
              final geometry = detail.result.geometry!;
              final lat = geometry.location.lat;
              final lang = geometry.location.lng;
              location = PointLatLng(
                lat,
                lang,
              );

              final PolylineResult result =
                  await polylinePoints.getRouteBetweenCoordinates(
                widget.googleApiKey,
                PointLatLng(
                  widget.startLocationLatitude,
                  widget.startLocationLongitude,
                ),
                PointLatLng(
                  location.latitude,
                  location.longitude,
                ),
              );

              if (result.points.isNotEmpty) {
                result.points.forEach((point) {
                  polylineCoordinates
                      .add(PointLatLng(point.latitude, point.longitude));
                });
              }

              //polulineCoordinates is the List of longitute and latidtude.
              double distance = 0;
              double totalDistance = 0;
              for (var i = 0; i < polylineCoordinates.length - 1; i++) {
                totalDistance += calculateDistance(
                  polylineCoordinates[i].latitude,
                  polylineCoordinates[i].longitude,
                  polylineCoordinates[i + 1].latitude,
                  polylineCoordinates[i + 1].longitude,
                );
              }

              distance = totalDistance;
              widget.totalDistance(totalDistance);
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: TigrisColor.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  15,
                ),
              ),
              border: Border.all(color: TigrisColor.blackOpacity20),
              boxShadow: [
                BoxShadow(
                  color: TigrisColor.blackOpacity10,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(
                    0,
                    3,
                  ), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                locationTitle,
                style: const TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.search),
              dense: true,
            ),
          ),
        ),
      ),
    );
  }
}
