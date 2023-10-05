import 'package:flutter/material.dart';
import 'package:riseup/models/movie.dart';
import 'package:riseup/views/movie_detail/movie_detail_screen.dart';

class MovieTile extends StatelessWidget {
  final Movie movie;
  const MovieTile({
    required this.movie,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToDetail(context);
      },
      child: Container(
        height: 200,
        width: (MediaQuery.of(context).size.width / 2) - 40,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width / 2) - 40,
              color: Colors.grey.shade200,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 5,
                    color: movie.watched ? Colors.green : Colors.yellow,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              movie.name,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Icon(
                            Icons.favorite_border_outlined,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigateToDetail(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return MovieDetailScreen(
            movie: movie,
          );
        },
      ),
    );
  }
}
