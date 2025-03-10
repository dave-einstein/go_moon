import 'package:flutter/material.dart';
import 'package:go_moon/widget/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _DeviceHeight, _DeviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _DeviceHeight = MediaQuery.of(context).size.height;
    _DeviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _DeviceHeight,
          width: _DeviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _DeviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [_pageTitle(), _bookRideWidget()],
              ),
              Align(child: _moonImageWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _DeviceHeight * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownmenu(),
          _travellersInfoWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      'GoMoon',
      style: TextStyle(
        fontSize: 70,
        color: Colors.white,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _moonImageWidget() {
    return Container(
      height: _DeviceHeight,
      width: _DeviceWidth,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/noao0107a.jpeg'),
        ),
      ),
    );
  }

  Widget _destinationDropdownmenu() {
    return CustomDropdownButton(
      item: ["Mercury", "Venus", "Mars", "Jupiter"],
      width: _DeviceWidth,
    );
  }

  Widget _travellersInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButton(
          item: ["1", "2", "3", "4"],
          width: _DeviceWidth * 0.45,
        ),
        CustomDropdownButton(
          item: ["Economy", "Business", "First Class", "Private"],
          width: _DeviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _DeviceHeight * 0.01),
      width: _DeviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () => {},
        child: Text("Book Ride", style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
