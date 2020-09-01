import 'package:travel_app/models/activity_model..dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/newdelhi.jpg',
    name: 'New Delhi',
    type: 'Photo Shooting',
    startTimes: ['9.00 a.m', '11.00 a.m'],
    rating: 5,
    price: 120,
  ),
  Activity(
    imageUrl: 'assets/images/newyork.jpg',
    name: 'New York',
    type: 'Recreation Tour',
    startTimes: ['11.00 a.m', '1.00 p.m'],
    rating: 4,
    price: 150,
  ),
  Activity(
    imageUrl: 'assets/images/paris.jpg',
    name: 'Paris',
    type: 'Romantic Trip',
    startTimes: ['8.00 a.m', '10.00 a.m'],
    rating: 5,
    price: 170,
  ),
  Activity(
    imageUrl: 'assets/images/santorini.jpg',
    name: 'Santorini',
    type: 'Sight seeing',
    startTimes: ['11.00 a.m', '11.40 a.m'],
    rating: 3,
    price: 80,
  ),
  Activity(
    imageUrl: 'assets/images/saopaulo.jpg',
    name: 'Sau Paulo',
    type: 'Photo Shooting',
    startTimes: ['2.00 p.m', '4.00 p.m'],
    rating: 4,
    price: 95,
  ),
  Activity(
    imageUrl: 'assets/images/venice.jpg',
    name: 'Venice',
    type: 'Boat Riding',
    startTimes: ['11.00 a.m', '1.00 p.m'],
    rating: 5,
    price: 120,
  ),
];

List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/newdelhi.jpg',
      city: 'New Delhi',
      country: 'India',
      description: 'Visit New Delhi for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/newyork.jpg',
      city: 'New York',
      country: 'USA',
      description: 'Visit New York for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/paris.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/santorini.jpg',
      city: 'Santorini',
      country: 'Greece',
      description: 'Visit Santorini for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/saopaulo.jpg',
      city: 'Sao Paulo',
      country: 'Brazil',
      description: 'Visit Sao Paulo for an amazing and unforgettable adventure',
      activities: activities),
  Destination(
      imageUrl: 'assets/images/venice.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure',
      activities: activities),
];
