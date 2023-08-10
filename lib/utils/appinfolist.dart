
message() {
  final hour = (DateTime.now()).hour;
  String message;
  if ([5, 6, 7, 8, 9, 10, 11].any((element) => element == hour)) {
    message = "Good Morning!";
    return message;
  }
  if ([12, 13, 14, 15, 16].any((element) => element == hour)) {
    message = "Good Afternoon!";
    return message;
  }
  if ([17, 18, 19, 20].any((element) => element == hour)) {
    message = "Good Evening!";
    return message;
  }
  if ([21, 22, 23, 0, 1, 2, 3, 4].any((element) => element == hour)) {
    message = "Good Night!";
    return message;
  }
}


List<Map<String, dynamic>> hotelList = [
  {
    'image': 'assets\\images\\openpavillion.jpg',
    'name': 'Open Pavillion',
    'destination': 'London',
    'price': '\$25/night',
  },
  {
    'image': 'assets\\images\\greenbay.jpg',
    'name': 'Green Bay',
    'destination': 'London',
    'price': '\$40/night',
  },
  {
    'image': 'assets\\images\\royalinn.jpg',
    'name': 'Royal Inn',
    'destination': 'Birmingham',
    'price': '\$20/night',
  },
  {
    'image': 'assets\\images\\woodshack.jpg',
    'name': 'Wood Shack',
    'destination': 'Birmingham',
    'price': '\$15/night',
  },
];


List<Map<String, dynamic>> ticketList = [
  {
    'from': 'NYC',
    'to': 'LDN',
    'fromfull': 'New York',
    'tofull': 'London',
    'duration': '8H 30M',
    'date': '13 Jul',
    'time': '8:00 AM',
    'number': '23D',
    'left': '10',
    'right': '24',
  },
  {
    'from': 'LDN',
    'to': 'NYC',
    'fromfull': 'London',
    'tofull': 'New York',
    'duration': '8H 30M',
    'date': '18 Jul',
    'time': '5:00 PM',
    'number': '36A',
    'left': '21',
    'right': '13',
  },
];
