import 'package:flutter/material.dart';

import 'package:travel_app/models/activity_model..dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/widgets/container_column.dart';
import 'package:travel_app/widgets/stack_image.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  DestinationScreen(this.destination);
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          StackImage(widget.destination),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext ctx, int index) {
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: [
                    ContainerColumn(activity, context),
                    Positioned(
                      top: 15.0,
                      left: 20.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          width: 110.0,
                          image: AssetImage(activity.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
