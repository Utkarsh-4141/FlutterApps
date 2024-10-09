import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context , int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://www.tallengestore.com/cdn/shop/products/Sholay_-_Amitabh_Bachchan_-_Hindi_Movie_Poster_-_Tallenge_Bollywood_Poster_Collection_2_d6c5b9f4-37db-446b-8777-c894121d5b12.jpg?v=1569358584"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/7/75/Leo_%282023_Indian_film%29.jpg/220px-Leo_%282023_Indian_film%29.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://m.media-amazon.com/images/I/91uzbH0vmcL._AC_UF894,1000_QL80_.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://c8.alamy.com/comp/2JE359T/prabhas-poster-baahubali-the-beginning-2015-2JE359T.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://moviegalleri.net/wp-content/uploads/2021/07/Vijay-Sethupathi-Kamal-Fahadh-Faasil-Vikram-Movie-First-Look-Poster-HD.jpg"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 200,
                        child: Image.network("https://image.tmdb.org/t/p/original/ytdp64MDSpONpm932nQcMTD95IF.jpg"),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
