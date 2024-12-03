import 'package:flutter/material.dart';

class Mymovies extends StatelessWidget {
  const Mymovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(10.0),
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
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.person_outline, size: 30.0),
                 Icon(Icons.notification_add, size: 30.0),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: const [
                Icon(Icons.location_pin, color: Colors.grey),
                SizedBox(width: 5),
                Text("JAKARTA",
                    style: TextStyle(fontSize: 16, color: Colors.black)),
                Spacer(),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildMovieItem(
                  title: "GLADIATOR II",
                  genre: "Action, Adventure",
                  rating: "9.5",
                  ageRating: "D 17+",
                  imagePath: "Assets/Images/horizontal.jpg",
                ),
                const SizedBox(height: 16),
                _buildMovieItem(
                  title: "RED ONE",
                  genre: "Action, Adventure",
                  rating: "9.3",
                  ageRating: "R 13+",
                  imagePath: "Assets/Images/horizontal2.jpg",
                ),
              ],
            ),
          ),
        ],
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
              icon: Icon(Icons.home, color: Colors.grey),
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
              icon: Icon(Icons.local_movies, color: Colors.black),
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

  Widget _buildMovieItem({
    required String title,
    required String genre,
    required String rating,
    required String ageRating,
    required String imagePath,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          ageRating,
                          style:
                              const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        genre,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.yellow, size: 14),
                      const SizedBox(width: 4),
                      Text(
                        rating,
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
