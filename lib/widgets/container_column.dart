import 'package:flutter/material.dart';
import 'package:travel_app/models/activity_model..dart';

class ContainerColumn extends StatelessWidget {
  final Activity activity;
  final BuildContext context;
  ContainerColumn(this.activity, this.context);

  Column _buildColumn() {
    return Column(
      children: [
        Text(
          '\$${activity.price}',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'per pack',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Padding _buildRatingStarts(int ratings) {
    String stars = '';
    for (int i = 0; i < ratings; i++) {
      stars += '* ';
    }
    stars.trim();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(stars),
    );
  }

  Row _buildRow() {
    return Row(
      children: [
        Container(
          width: 70.0,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            activity.startTimes[0],
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          width: 70.0,
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            activity.startTimes[1],
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
      height: 170.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120.0,
                  child: Text(
                    activity.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                _buildColumn()
              ],
            ),
            Text(
              activity.type,
              style: TextStyle(color: Colors.grey),
            ),
            _buildRatingStarts(activity.rating),
            SizedBox(
              height: 10.0,
            ),
            _buildRow()
          ],
        ),
      ),
    );
  }
}
