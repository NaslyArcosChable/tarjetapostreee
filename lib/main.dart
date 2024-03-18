import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;               

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

 

  @override
  Widget build(BuildContext context) {
   
//Estrellas de ranking
  final stars = Row (
    children:[
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      const Icon(Icons.star, color: Colors.black),
      const Icon(Icons.star, color: Colors.black),
    ],
  );
//Calificaciones
  final raitings = Container(
    padding: const EdgeInsets.all(15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        stars,
        const Text (
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 1,
            fontSize: 14,
             )),
      ],
    ),
  );
//estilos por defecto
  const descTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.w800,
  fontFamily: 'Roboto',
  letterSpacing: 0.5,
  fontSize: 11,
  height: 2,
  );
//Lista de iconos
  final iconList = DefaultTextStyle (
    style: descTextStyle,
    // ignore: avoid_unnecessary_containers
    child: Container(
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         Column(
          children: [
            Icon(Icons.kitchen, color: Colors.green[500],),
            const Text('PREP:'),
            const Text('25 min')
            ],
          ),
          Column(
          children: [
            Icon(Icons.timer, color: Colors.green[500],),
            const Text('COOK:'),
            const Text('1 hr')
            ],
          ),
          Column(
          children: [
            Icon(Icons.restaurant, color: Colors.green[500],),
            const Text('FEEDS:'),
            const Text('4-6'),
            ],
          ),
        ]
      ), 
    ),
  );

 const titleText=(
    Text(
      'Strawberry Pavlova',
        style: TextStyle(
        fontWeight: FontWeight.w800,
        letterSpacing: 0.5,
        fontSize: 20
      )
    )
  );
  
 const subTitle=(
    Text (
    'Pavlova is a meringue-based dessert named afeter the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, lopped with fruit and whipped cream.',
      style: TextStyle(
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5, 
      fontSize: 18
    )
   )
  );

//Columna izquierda de la tarjeta
  final leftColumn = Container (
    padding: const EdgeInsets.fromLTRB(20,0,0,0),
    child: Column(
      children: [
        titleText,
        subTitle,
        raitings,
        iconList,
      ],
    ),
  );


  final mainImage = Image.asset(
    'images/imagen.jpg',
    fit: BoxFit.cover,
    width: 480,
    height: 400,
  );



    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin:const EdgeInsets.fromLTRB(0,0,0,0),
          height: 800,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 370,
                  child: leftColumn,
                ),
                mainImage
              ],
            ),)
          ) 
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
