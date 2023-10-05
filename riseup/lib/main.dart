import 'package:flutter/material.dart';
import 'package:riseup/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class Movie {
  String name;
  String description;
  int rating;
  List<String> type;

  Movie({
    required this.name,
    required this.description,
    required this.rating,
    required this.type,
  });
}

class Teste {
  String name;
  int age;

  Teste({required this.name, required this.age});
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Movie> brazilianMovies = [
    Movie(
      name: "Cidade de Deus",
      description:
          "Um jovem negro é um grande fotógrafo e vai parar na favela da Cidade de Deus.",
      rating: 8,
      type: ["Drama", "Ação", "Crime"],
    ),
    Movie(
      name: "Central do Brasil",
      description:
          "Uma ex-professora se torna escritora de cartas para pessoas analfabetas.",
      rating: 8,
      type: ["Drama"],
    ),
    Movie(
      name: "Tropa de Elite",
      description:
          "Um capitão da polícia luta contra o tráfico de drogas no Rio de Janeiro.",
      rating: 8,
      type: ["Ação", "Crime", "Drama"],
    ),
    Movie(
      name: "O Auto da Compadecida",
      description: "As aventuras de João Grilo e Chicó no sertão nordestino.",
      rating: 8,
      type: ["Comédia"],
    ),
    Movie(
      name: "Bacurau",
      description:
          "Um filme que narra eventos estranhos em um pequeno vilarejo brasileiro.",
      rating: 7,
      type: ["Drama", "Mistério"],
    ),
    Movie(
      name: "Tropa de Elite 2: O Inimigo Agora é Outro",
      description:
          "Continuação do filme Tropa de Elite, abordando a política e a corrupção no Rio de Janeiro.",
      rating: 8,
      type: ["Ação", "Crime", "Drama"],
    ),
    Movie(
      name: "O Quatrilho",
      description:
          "A história de dois casais italianos que imigram para o Brasil.",
      rating: 7,
      type: ["Drama", "Romance"],
    ),
    Movie(
      name: "Cabra Marcado para Morrer",
      description:
          "Um documentário sobre a vida de João Pedro Teixeira, um líder camponês assassinado no Nordeste brasileiro.",
      rating: 8,
      type: ["Documentário"],
    ),
    Movie(
      name: "O Som ao Redor",
      description:
          "Um olhar sobre a vida em um bairro de classe média no Recife.",
      rating: 7,
      type: ["Drama"],
    ),
    Movie(
      name: "Que Horas Ela Volta?",
      description:
          "Uma empregada doméstica se muda para São Paulo e sua filha vem visitá-la, causando tensões.",
      rating: 7,
      type: ["Drama"],
    ),
    Movie(
      name: "O Pagador de Promessas",
      description:
          "A história de um homem que faz uma promessa a um santo e enfrenta desafios para cumpri-la.",
      rating: 7,
      type: ["Drama"],
    ),
    Movie(
      name: "Tatuagem",
      description:
          "Um soldado se envolve com um grupo de teatro subversivo durante a ditadura militar no Brasil.",
      rating: 7,
      type: ["Drama", "Comédia"],
    ),
    Movie(
      name: "Aquarius",
      description:
          "Uma mulher idosa enfrenta pressões para vender seu apartamento em um edifício antigo.",
      rating: 7,
      type: ["Drama"],
    ),
    Movie(
      name: "O Palhaço",
      description:
          "A história de um palhaço que busca um novo propósito em sua vida itinerante.",
      rating: 7,
      type: ["Drama", "Comédia"],
    ),
    Movie(
      name: "O Cheiro do Ralo",
      description:
          "Um homem solitário que é dono de uma loja de penhores faz estranhas descobertas em seu ralo.",
      rating: 7,
      type: ["Drama", "Comédia"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ...brazilianMovies.map(
                (element) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Detail(
                          movie: element,
                        );
                      }));
                    },
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('${element.name}'),
                          subtitle: Text('${element.description}'),
                        ),
                        Divider()
                      ],
                    ),
                  );
                },
              ).toList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
