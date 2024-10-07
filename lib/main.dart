import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconTheme(
          data: IconThemeData(color: Colors.white),
          child: IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ),
        actions: [
          IconTheme(
            data: IconThemeData(color: Color(0xffffffff)),
            child: IconButton(
              icon: Icon(Icons.visibility_outlined),
              onPressed: () {},
            ),
          ),
          IconTheme(
            data: IconThemeData(color: Color(0xffffffff)),
            child: IconButton(
              icon: Icon(Icons.question_mark_rounded),
              onPressed: () {},
            ),
          ),
          IconTheme(
            data: IconThemeData(color: Color(0xffffffff)),
            child: IconButton(
              icon: Icon(Icons.mark_email_read_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Aqui é onde torna a tela rolável
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Text(
                    'Conta:',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  ),
                ],
              ),
              const Text(
                'R\$1000,00',
                style:
                    const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE8DEF8),
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.pix, size: 30),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Pix',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE8DEF8),
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.money, size: 30),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Pagamento',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE8DEF8),
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.qr_code, size: 30),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'QRcode',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE8DEF8),
                            foregroundColor: Colors.black,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                          ),
                          onPressed: () {},
                          child: Icon(Icons.attach_money, size: 30),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Transferir',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE8DEF8),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.all(16),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.credit_card),
                          Text(
                            'Meus Cartões',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE8DEF8),
                        foregroundColor: Colors.black,
                        padding: EdgeInsets.all(16),
                      ),
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Guarde seu dinheiro em caixinhas',
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 12),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Acessando a área de planejamento',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Divider(),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Cartão de Crédito',
                        style: TextStyle(fontSize: 24),
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Fatura Fechada',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'R\$ 2123,39',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        'Vencimento dia 15',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE8DEF8),
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.all(16),
                        ),
                        child: Text(
                          'Renegociar',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Emprestimo',
                            style: TextStyle(fontSize: 24),
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const Text(
                            'Tudo certo, você está em dia!',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const Divider(),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Descubra Mais',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                    height:
                                        10), // espaçamento entre o título e o card
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 4,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                        child: Image.network(
                                          'https://www.septe.com.br/wp-content/uploads/2024/01/planilha-matriz-9-box-jpg.webp', // URL da imagem
                                          height: 150, // altura da imagem
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const <Widget>[
                                            Text(
                                              'Seguro de Vida',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              'Cuide bem de quem você ama de um jeito simples',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 16, bottom: 16),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.purple,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          onPressed: () {
                                            // Ação do botão
                                          },
                                          child: const Text('Conhecer',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
