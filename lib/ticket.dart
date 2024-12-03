import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text("Film Bioskop"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.black,
              tabs: const [
                Tab(text: "SEDANG TAYANG"),
                Tab(text: "AKAN DATANG"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // "SEDANG TAYANG" Tab
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      childAspectRatio: 0.7,
                      children: [
                        _buildMovieCard(
                            "BILA ESOK IBU TIADA",
                            "Drama, Keluarga",
                            "9.2",
                            "Assets/Images/horizontal2.jpg"),
                        _buildMovieCard("SANTET SEGORO PITU", "Horror", "9.0",
                            "Assets/Images/horizontal.jpg"),
                        _buildMovieCard("GLADIATOR II", "Action, Adventure",
                            "9.5", "Assets/Images/images.jpeg"),
                        _buildMovieCard("RED ONE", "Action, Adventure", "9.3",
                            "Assets/Images/ll.jpg"),
                      ],
                    ),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      childAspectRatio: 0.7,
                      children: [
                        _buildMovieCard("MARVELS LEGACY", "Superhero, Action",
                            "8.9", "Assets/Images/dariword.png"),
                        _buildMovieCard("FANTASY WORLD", "Adventure, Fantasy",
                            "8.7", "Assets/Images/horizontal.jpg"),
                        _buildMovieCard("GALAXY WARS: THE RETURN", "Sci-Fi",
                            "9.1", "Assets/Images/dooodooo.jpeg"),
                        _buildMovieCard("MYSTIC RIVER", "Thriller, Mystery",
                            "8.8", "Assets/Images/horizontal.jpg"),
                      ],
                    ),
                  ),
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
              icon: Icon(Icons.home, color:  Colors.grey),
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
              icon: Icon(Icons.movie_filter, color: Colors.black),
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

  Widget _buildMovieCard(
      String title, String genre, String rating, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(
                  genre,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 14),
                    Text(
                      rating,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
