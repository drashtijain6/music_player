import 'package:flutter/material.dart';
import 'package:music_player/widgets/AlbumDetailsPage.dart';
import 'package:music_player/widgets/album_card.dart';
import 'package:music_player/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xFF1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    _buildHeader(),
                    _buildHorizontalList("Recently Played", _buildAlbumCards()),
                    SizedBox(height: 32),
                    _buildGridSection(),
                    _buildHorizontalList(
                        "Based on your recent listening", _buildSongCards()),
                    _buildHorizontalList(
                        "Recommended Radio", _buildRecommendedRadios()),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Recently Played",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Row(
            children: [
              Icon(Icons.history, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.settings, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalList(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: children.map((child) => Padding(
              padding: const EdgeInsets.only(right: 16),
              child: child,
            )).toList(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildAlbumCards() {
    return [
      AlbumCard(
        label: "Top 50-Global",
        image: AssetImage("assets/top50.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Top 50-Global",
                albumImage: "assets/top50.jpg",
                albumDescription:
                "The top 50 tracks from around the world, updated weekly.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 1",
        image: AssetImage("assets/album1.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 1",
                albumImage: "assets/album1.jpg",
                albumDescription:
                "A great collection of tracks for any occasion.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 2",
        image: AssetImage("assets/album2.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 2",
                albumImage: "assets/album2.jpg",
                albumDescription:
                "The latest hits and favorite tracks in one album.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 3",
        image: AssetImage("assets/album3.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 3",
                albumImage: "assets/album3.jpg",
                albumDescription:
                "An unforgettable collection of top hits.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 4",
        image: AssetImage("assets/album4.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 4",
                albumImage: "assets/album4.jpg",
                albumDescription:
                "Your perfect playlist for the ultimate music experience.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 5",
        image: AssetImage("assets/album5.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 5",
                albumImage: "assets/album5.jpg",
                albumDescription:
                "Feel the rhythm with these upbeat tracks.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 6",
        image: AssetImage("assets/album6.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 6",
                albumImage: "assets/album6.jpg",
                albumDescription:
                "Classic songs and timeless melodies.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 7",
        image: AssetImage("assets/album7.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 7",
                albumImage: "assets/album7.jpg",
                albumDescription:
                "A mix of genres for every mood.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 8",
        image: AssetImage("assets/album8.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 8",
                albumImage: "assets/album8.jpg",
                albumDescription:
                "Perfect for a long drive or a chill evening.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 9",
        image: AssetImage("assets/album9.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 9",
                albumImage: "assets/album9.jpg",
                albumDescription:
                "A fresh collection of the latest tracks.",
              ),
            ),
          );
        },
      ),
      AlbumCard(
        label: "Album 10",
        image: AssetImage("assets/album10.jpg"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumDetailsPage(
                albumTitle: "Album 10",
                albumImage: "assets/album10.jpg",
                albumDescription:
                "Endless hours of music, the best playlist ever.",
              ),
            ),
          );
        },
      ),
    ];
  }


  Widget _buildGridSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good evening",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Expanded(child: _buildRowAlbumCard("Top 50 - Global", "assets/top50.jpg")),
                  SizedBox(width: 16),
                  Expanded(child: _buildRowAlbumCard("Best Mode", "assets/album1.jpg")),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: _buildRowAlbumCard("RapCaviar", "assets/album2.jpg")),
                  SizedBox(width: 16),
                  Expanded(child: _buildRowAlbumCard("Eminem", "assets/album5.jpg")),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildRowAlbumCard(String label, String assetPath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(4),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          Image.asset(assetPath, height: 48, width: 48, fit: BoxFit.cover),
          SizedBox(width: 8),
          Flexible(
            child: Text(label,
                style: TextStyle(color: Colors.white, fontSize: 14),
                overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSongCards() {
    return [
      SongCard(image: AssetImage("assets/album6.jpg")),
      SongCard(image: AssetImage("assets/album9.jpg")),
      SongCard(image: AssetImage("assets/album4.jpg")),
    ];
  }

  List<Widget> _buildRecommendedRadios() {
    return [
      SongCard(image: AssetImage("assets/album8.jpg")),
      SongCard(image: AssetImage("assets/album5.jpg")),
      SongCard(image: AssetImage("assets/album6.jpg")),
    ];
  }
}
