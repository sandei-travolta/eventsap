class Events{
  final String name;
  final String location;
  final String date;
  final String Likes;
  final List images;
  final String reserves;
  final String price;
  Events({required this.name, required this.location, required this.date, required this.Likes, required this.images,required this.reserves,required this.price});

}
List<Events> events=[
  Events(name: "New Year Party", location: "Town Hall", date: "02/10/2023", Likes: "4", images: ["Assets/images/pexels-danik-prihodko-7304689.jpg","Assets/images/pexels-sebastian-ervi-1763075.jpg","Assets/images/pexels-wendy-wei-1494665.jpg"],reserves:"10",price: "1000")
];
