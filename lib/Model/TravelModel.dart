class TravelModel{

String name;
String location;
String image;
String distance;
String temp;
String rating;
String discription;
String price;

TravelModel({
  required this.name,
  required this.location,
  required this.image,
  required this.distance,
  required this.temp,
  required this.rating,
  required this.discription,
  required this.price
});
}

List<TravelModel> travelList =[
  TravelModel(
    name: "New York", 
    location: "US - New York", 
    image: "assets/images/NewYork.jpg", 
    distance: "6", 
    temp: "4.6", 
    rating: "5", 
    discription: "New York City: Reborn is a wide-ranging Manhattan Institute project that will encompass research, journalism, and event programming. The institute, through this initiative, convenes business, civic, and academic leaders from around the city with MI scholars to discuss key issues—including public transit, housing, the city budget, infrastructure, education, public safety, and small-business competitiveness. Participants join issue-specific working groups, led by MI scholars, to develop innovative policy ideas and draft a series of issue briefs. This research will ultimately form a comprehensive agenda for the city’s recovery and a policy blueprint for its future leaders.", 
    price: "1950"),
  TravelModel(
    name: "Tehran", 
    location: "Iran - Tehran", 
    image: "assets/images/Tehran.jpg", 
    distance: "7", 
    temp: "3.6", 
    rating: "4", 
    discription: "Tehran is the capital of Iran and one of the largest and most populous cities in the world, with a population of 14 million. Tehran has a temperate climate, as it is located at 35.41 north latitude and 51.15 east longitude and 1,200 meters above sea level , Which makes it a little cooler than other capitals in the Middle East. However, this does not prevent escaping Tehran's hot summer and its cold winter for a nice. The best time to visit Tehran is late September to early November and mid-April to early June.", 
    price: "1800"),
  TravelModel(
    name: "Paris", 
    location: "France - Paris", 
    image: "assets/images/Paris.jpg", 
    distance: "10", 
    temp: "4.8", 
    rating: "4.8", 
    discription: "Paris is monumental, both due to its size but also its wealth of architectural heritage! The symbol of the capital city, and doubtless its best-known monument, is the unique Eiffel Tower, the 'Iron Lady' that offers visitors an unsurpassed view. Close by is the equally iconic Arc de Triomphe. This historical landmark dazzles onlookers on summer days, when the sun sets through the huge arch. Notre Dame Cathedral, a masterpiece of Gothic architecture, is another magnificent and unmissable sight, where you can admire sculptures, the nave, towers and even the crypt! Just as evocative, the Sacré-Cœur Basilica has been the source of inspiration for writers and film-makers. It houses the largest mosaic in France and boasts an incredible panoramic view over the city from the top of the Montmartre district! Paris is also a city of iconic squares, including the Place de la Concorde with its two fountains, rostral columns and the incredible Luxor Obelisk, the Place de la Bastille, with its famous July Column commemorating the revolution and its very modern Paris National Opera and the Place de l'Opéra, featuring the magnificent Opéra Garnier.", 
    price: "2106"),
  TravelModel(
    name: "Roma", 
    location: "Italy - Rome", 
    image: "assets/images/Roma.jpg", 
    distance: "16", 
    temp: "6.1", 
    rating: "4.2", 
    discription: "Situated on the river Tiber, between the Apennine mountains and the Tyrrhenian Sea, the 'Eternal City' was once the administrative centre of the mighty Roman Empire, ruling over a vast territory that stretched all the way from Britain to Mesopotamia. Today, the city is the seat of the Italian government and home to numerous ministerial offices. Rome has 2.6 million inhabitants while its metropolitan area is home to around 4.2 million.",
    price: "1678"),
];