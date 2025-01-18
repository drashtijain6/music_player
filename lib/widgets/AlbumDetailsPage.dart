import 'package:flutter/material.dart';

class AlbumDetailsPage extends StatelessWidget {
  final String albumTitle;
  final String albumImage;
  final String albumDescription;

  const AlbumDetailsPage({
    Key? key,
    required this.albumTitle,
    required this.albumImage,
    required this.albumDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Album Image
            Center(
              child: Image.asset(
                albumImage,
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Album Title and Details
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    albumTitle,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    albumDescription,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(height: 16),

                  // Action Buttons (Play, Like, Share)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border, color: Colors.white),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.green,
                        child: Icon(Icons.play_arrow),
                      ),
                      IconButton(
                        icon: Icon(Icons.share, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Suggested Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                "You might also like",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildSuggestedAlbum("Brainwash", "assets/album7.jpg"),
                  _buildSuggestedAlbum("Silence", "assets/album8.jpg"),
                  _buildSuggestedAlbum("Chill Beats", "assets/album9.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestedAlbum(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 14),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
