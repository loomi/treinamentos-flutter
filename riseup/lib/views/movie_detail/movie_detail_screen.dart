import 'package:flutter/material.dart';
import 'package:riseup/models/movie.dart';

class MovieDetailScreen extends StatefulWidget {
  final Movie movie;

  const MovieDetailScreen({
    super.key,
    required this.movie,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar')),
          Text(
            widget.movie.name,
            style: const TextStyle(fontSize: 24),
          ),
          Text(
            '${widget.movie.genre}',
          ),
          Text(
            widget.movie.description,
          ),
        ],
      ),
    );
  }
}
