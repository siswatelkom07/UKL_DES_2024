import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari di TIX ID',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(19),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 239, 239, 239),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Icon(Icons.person_outlined, size: 30.0),
                  Icon(Icons.notification_add, size: 30.0),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 25,
                child: Row(
                  children: [
                    Icon(Icons.pin_drop),
                    Text("JAKARTA"),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 1
                ),
                items: [
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                      'Assets/Images/horizontal2.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                      'Assets/Images/images.jpeg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Image.asset(
                      'Assets/Images/dariword.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('Assets/Images/Logo2.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('Assets/Images/TIXVIP.png'),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Jadilah TIX VIP Dapatkan untung lebih"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Sedang Tayang",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "Semua",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildCategoryButton("Semua Film"),
                      SizedBox(width: 10),
                      _buildCategoryButton("XXI"),
                      SizedBox(width: 10),
                      _buildCategoryButton("CGV"),
                      SizedBox(width: 10),
                      _buildCategoryButton("Cinépolis"),
                      SizedBox(
                        width: 10,
                      ),
                      _buildCategoryButton("Watchlist")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 300,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 300,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      enlargeCenterPage: false,
                      viewportFraction: 0.5),
                  items: [
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Center(
                        child: Image.asset(
                          'Assets/Images/Vert.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Center(
                        child: Image.asset(
                          'Assets/Images/dooodooo.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Center(
                        child: Image.asset(
                          'Assets/Images/ll.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(child:  Text("BILA BESOK IBU TIADA",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              Center(child: Text("Film ini dapat rating 9,2 dari penonton lho! Harus\nditonton nih!",textAlign: TextAlign.center,),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Spotlight",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Text("Berita hiburan terhangat untuk Anda!"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                _buildSpotlightItem('Assets/Images/Tix.png'),
                                SizedBox(width: 8),
                                _buildSpotlightItem('Assets/Images/Tix.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "TIX ID Box Office (11-17 November)",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 20),
                    Text(
                      "TIX Now",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    ListView.builder(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  itemCount: 5,
  itemBuilder: (context, index) {
    // Define a list of different image paths
    List<String> imagePaths = [
      'Assets/Images/Tom.png',
      'Assets/Images/Logo.png',
      'Assets/Images/Vert.png',
      'Assets/Images/dariword.png',
      'Assets/Images/Tom.png',
    ];

    return ListTile(
      leading: Image.asset(imagePaths[index]), // Use dynamic images based on the index
      title: Text("News Item $index"),
      subtitle: Text("2 jam lalu"),
      trailing: Icon(Icons.chevron_right),
    );
  },
)
                  ],
                ),
              ),
            ],
          ),
        ),
       bottomNavigationBar: BottomAppBar(
  shape: CircularNotchedRectangle(),
  notchMargin: 8.0,
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Wrap(
      alignment: WrapAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: const Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            Text("Home", style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.movie, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/movie');
              },
            ),
            Text("Movies", style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
        SizedBox(width: 40),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.local_movies, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/mymovie');
              },
            ),
            Text("My Movies", style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.movie_filter, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/ticket');
              },
            ),
            Text("My Ticket", style: TextStyle(color: Colors.black, fontSize: 12)),
          ],
        ),
      ],
    ),
  ),
)


);
  }

  Widget _buildCategoryButton(String text, {bool isFavorite = false}) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(
            color: isFavorite ? Colors.red : const Color.fromARGB(255, 239, 239, 239)),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  Widget _buildSpotlightItem(String imagePath) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8), // Space between image and icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.remove_red_eye_rounded, color: Colors.grey),
            SizedBox(width: 8),
            Icon(Icons.thumb_up_alt, color: Colors.grey),
          ],
        ),
      ],
    );
  }
}
