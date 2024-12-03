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
                  
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      childAspectRatio: 0.7,
                      children: [
                        _buildMovieCard("BILA ESOK IBU TIADA", "Drama, Keluarga", "9.2", "Assets/Images/horizontal.jpg"),
                        _buildMovieCard("SANTET SEGORO PITU", "Horror", "9.0", "Assets/Images/horizontal.jpg"),
                        _buildMovieCard("GLADIATOR II", "Action, Adventure", "9.5", "Assets/Images/horizontal.jpg"),
                        _buildMovieCard("RED ONE", "Action, Adventure", "9.3", "Assets/Images/horizontal.jpg"),
                      ],
                    ),
                  ),
                 
                  Center(
                    child: Text(
                      "Belum Ada Data Film Akan Datang",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            IconButton(
              icon: const Icon(Icons.movie, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/movie');
              },
            ),
            const SizedBox(width: 40), 
            IconButton(
              icon: const Icon(Icons.local_movies, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/mymovie');
              },
            ),
            IconButton(
              icon: const Icon(Icons.movie_filter, color: Color.fromARGB(255, 0, 0, 0)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/ticket');
              },
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildMovieCard(String title, String genre, String rating, String imagePath) {
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
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
