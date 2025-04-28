import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:moniepoint_realestate/constants.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import 'components/map_marker.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(4.824167, 7.033611),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  Set<Marker> markers = {};
  initMarkers() async {
    markers = {};

    markers.add(Marker(
      markerId: MarkerId('One'),
      position: LatLng(4.82467,7.03611),
      icon: await const MapMarker(label: "10,3 mn P").toBitmapDescriptor(
          logicalSize: const Size(100, 100), imageSize: const Size(90, 40)),
    ));
    markers.add(Marker(
      markerId: MarkerId('Two'),
      position: LatLng(4.824267,7.03711),
      icon: await const MapMarker(label: "11 mn P").toBitmapDescriptor(
          logicalSize: const Size(20, 20), imageSize: const Size(90, 40)),
    ));
    markers.add(Marker(
      markerId: MarkerId('Three'),
      position: LatLng(4.824467,7.03811),
      icon: await const MapMarker(label: "7.8 mn p").toBitmapDescriptor(
          logicalSize: const Size(200, 20), imageSize: const Size(90, 40)),
    ));
    markers.add(Marker(
      markerId: MarkerId('Four'),
      position: LatLng(4.824967,7.03611),
      icon: await const MapMarker(label: "12.3 mn p").toBitmapDescriptor(
          logicalSize: const Size(150, 150), imageSize: const Size(90, 40)),
    ));
    markers.add(Marker(
      markerId: MarkerId('Five'),
      position: LatLng(4.824167,7.03911),
      icon: await const MapMarker(label: "6.95 mn p").toBitmapDescriptor(
          logicalSize: const Size(150, 150), imageSize: const Size(90, 40)),
    ));
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers:markers,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  Container(
                    width: 270,
                    height: 40,
                    decoration: BoxDecoration(
                      color: brandWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Saint Petersburg",
                        border: InputBorder.none,
                        icon: SvgPicture.asset("assets/images/icons/magnifying-glass.svg", width: 24, height: 24,),
                      ),

                    )
                  ).animate().fadeIn(),
                  const SizedBox(width: defaultPadding),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: brandWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: SvgPicture.asset("assets/images/icons/sliders-horizontal.svg", width: 24, height: 24,),
                    ),
                  ).animate().fadeIn()
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding, vertical: defaultPadding * 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuAnchor(
                    builder: (BuildContext context, MenuController controller, Widget? child) {
                      return IconButton(
                        onPressed: () {
                          if (controller.isOpen) {
                            controller.close();
                          } else {
                            controller.open();
                          }
                        },
                        icon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black54.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: SvgPicture.asset("assets/images/icons/paper-plane-tilt.svg", width: 18, height: 18, fit: BoxFit.contain,),
                          ),
                        ),
                        tooltip: 'Show menu',
                      );
                    },
                    menuChildren: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/icons/shield-check.svg", width: 16, height: 16, fit: BoxFit.contain,),
                            const SizedBox(width: defaultPadding / 4),
                            Text("Cosy areas", style: TextStyle(color: brandBlack, fontSize: 12))

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/icons/wallet-yellow.svg", width: 16, height: 16, fit: BoxFit.contain,),
                            const SizedBox(width: defaultPadding / 4),
                            Text("Price", style: TextStyle(color: brandOrange, fontSize: 12),)

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/icons/basket.svg", width: 16, height: 16, fit: BoxFit.contain,),
                            const SizedBox(width: defaultPadding / 4),
                            Text("Infrastructure",style: TextStyle(color: brandBlack, fontSize: 12))

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2, horizontal: defaultPadding),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/icons/stack.svg", width: 16, height: 16, fit: BoxFit.contain,),
                            const SizedBox(width: defaultPadding / 4),
                            Text("Without any layer", style: TextStyle(color: brandBlack, fontSize: 12),)

                          ],
                        ),
                      )

                    ],
                  ),

                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black54.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/icons/list.svg", width: 18, height: 18, fit: BoxFit.contain,),
                            const SizedBox(width: defaultPadding / 4),
                            Text("List of variants", style: TextStyle(color: brandWhite),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }


}
