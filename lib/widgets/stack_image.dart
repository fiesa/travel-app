import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/destination_model.dart';

class StackImage extends StatelessWidget {
  final Destination destination;
  StackImage(this.destination);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 0.2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Hero(
            tag: destination.imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image(
                image: AssetImage(
                  destination.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30.0,
                ),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 30.0,
                    ),
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.sortAmountDown,
                      size: 25.0,
                    ),
                    color: Colors.black,
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                destination.city,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.locationArrow,
                    color: Colors.white70,
                    size: 15.0,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    destination.country,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Icon(
            Icons.location_on,
            color: Colors.white70,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
