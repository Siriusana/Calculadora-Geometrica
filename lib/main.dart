import 'package:flutter/material.dart';

void main() {
  runApp(GeometricCalculatorApp());
}

class GeometricCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Geométrica',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/square': (context) => SquareAreaScreen(),
        '/rectangle': (context) => RectangleAreaScreen(),
        '/triangle': (context) => TriangleAreaScreen(),
      },
    );
  }
}

// Tela Principal (Home)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora Geométrica'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/square');
              },
              child: Text('Área do Quadrado'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/rectangle');
              },
              child: Text('Área do Retângulo'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/triangle');
              },
              child: Text('Área do Triângulo'),
            ),
          ],
        ),
      ),
    );
  }
}

class SquareAreaScreen extends StatefulWidget {
  @override
  _SquareAreaScreenState createState() => _SquareAreaScreenState();
}

class _SquareAreaScreenState extends State<SquareAreaScreen> {
  TextEditingController _controller = TextEditingController();
  double? side;
  double? area;

  void _calculateArea() {
    setState(() {
      side = double.tryParse(_controller.text);
      if (side != null) {
        area = side! * side!;
      } else {
        area = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área do Quadrado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o lado do quadrado',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calcular Área'),
            ),
            SizedBox(height: 20),
            if (area != null)
              Text(
                'Área do quadrado: ${area!.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

// Tela de Cálculo da Área do Retângulo
class RectangleAreaScreen extends StatefulWidget {
  @override
  _RectangleAreaScreenState createState() => _RectangleAreaScreenState();
}

class _RectangleAreaScreenState extends State<RectangleAreaScreen> {
  TextEditingController _lengthController = TextEditingController();
  TextEditingController _widthController = TextEditingController();
  double? length;
  double? width;
  double? area;

  void _calculateArea() {
    setState(() {
      length = double.tryParse(_lengthController.text);
      width = double.tryParse(_widthController.text);
      if (length != null && width != null) {
        area = length! * width!;
      } else {
        area = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área do Retângulo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _lengthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite o comprimento',
              ),
            ),
            TextField(
              controller: _widthController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite a largura',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calcular Área'),
            ),
            SizedBox(height: 20),
            if (area != null)
              Text(
                'Área do retângulo: ${area!.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}

// Tela de Cálculo da Área do Triângulo
class TriangleAreaScreen extends StatefulWidget {
  @override
  _TriangleAreaScreenState createState() => _TriangleAreaScreenState();
}

class _TriangleAreaScreenState extends State<TriangleAreaScreen> {
  TextEditingController _baseController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  double? base;
  double? height;
  double? area;

  void _calculateArea() {
    setState(() {
      base = double.tryParse(_baseController.text);
      height = double.tryParse(_heightController.text);
      if (base != null && height != null) {
        area = (base! * height!) / 2;
      } else {
        area = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Área do Triângulo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite a base',
              ),
            ),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Digite a altura',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: Text('Calcular Área'),
            ),
            SizedBox(height: 20),
            if (area != null)
              Text(
                'Área do triângulo: ${area!.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}