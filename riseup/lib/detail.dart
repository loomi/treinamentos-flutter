import 'package:flutter/material.dart';
import 'package:riseup/main.dart';

class Detail extends StatefulWidget {
  final Movie movie;

  const Detail({super.key, required this.movie});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
              child: Text('Voltar')),
          Text(
            '${widget.movie.name}',style: TextStyle(fontSize: 24),
          ),
          Text(
            '${widget.movie.type}',
          ),
          Text(
            '${widget.movie.description}',
          ),
        ],
      ),
    );
  }
}
