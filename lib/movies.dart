import 'package:flutter/material.dart';

class Movies extends StatelessWidget {
  const Movies({super.key});

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
                Text("JAKARTA", style: TextStyle(fontSize: 16, color: Colors.black)),
                Spacer(),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ],
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 249, 230),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.orange, size: 40),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Tandai bioskop favoritmu!",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Bioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                     
                    },
                    child: const Text("Mengerti"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
        
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                _buildCinemaItem("AEON MALL JGC CGV"),
                _buildCinemaItem("AEON MALL TANJUNG BARAT XXI"),
                _buildCinemaItem("AGORA MALL IMAX"),
                _buildCinemaItem("AGORA MALL PREMIERE"),
                _buildCinemaItem("AGORA MALL XXI"),
                _buildCinemaItem("ARION XXI"),
                _buildCinemaItem("ARTHA GADING XXI"),
                _buildCinemaItem("BASSURA XXI"),
               
              ],
            ),
          ),
        ],
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
              icon: const Icon(Icons.movie, color: Color.fromARGB(255, 0, 0, 0)),
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
              icon: const Icon(Icons.airplane_ticket, color: Colors.grey),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/ticket');
              },
            ),
          ],
        ),
      ),
    );
  }

  
  Widget _buildCinemaItem(String cinemaName) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
      leading: const Icon(Icons.circle_outlined, color: Colors.grey),
      title: Text(
        cinemaName,
        style: const TextStyle(fontSize: 14, color: Colors.black),
      ),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
      onTap: () {
       
      },
    );
  }
}
