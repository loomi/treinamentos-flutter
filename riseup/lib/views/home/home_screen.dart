import 'package:flutter/material.dart';
import 'package:riseup/views/home/components/movie_tile.dart';
import 'package:riseup/utils/consts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 70),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Assistido",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    ...movies.where((movie) => movie.watched).map(
                      (movie) {
                        return MovieTile(
                          movie: movie,
                        );
                      },
                    ).toList(),
                  ],
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Para assitir",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    ...movies.where((movie) => !movie.watched).map(
                      (movie) {
                        return MovieTile(
                          movie: movie,
                        );
                      },
                    ).toList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
