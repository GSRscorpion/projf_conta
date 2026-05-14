import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int abaSelecionanada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.amber, size: 40),
        backgroundColor: Colors.pink,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Icon(Icons.face, color: Colors.white)],
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            spacing: 30,

            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/4537/4537258.png",
                width: 180,
              ),

              TextField(
                style: TextStyle(color: Colors.pink),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 246, 218),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.pinkAccent,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Colors.amber, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                  labelText: "Email",
                ),
              ),

              Column(
                spacing: 1,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.pink),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 255, 246, 218),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30,
                        color: Colors.amber,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: Colors.amber, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: Colors.pinkAccent),
                      ),
                      labelText: "Senha",
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        ("Esqueceu a senha?"),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 40,
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //fixedSize:  Size(140, 45),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.pink,
                    foregroundColor: Color.fromARGB(246, 243, 241, 242),
                  ),
                  onPressed: () {},
                  child: Text("Entrar"),
                ),
              ),

              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Não tem conta?"),

                  TextButton(
                    onPressed: () {},
                    child: Text(
                      ("Cadastre-se"),
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ],
              ),
            ], //children
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedLabelStyle: TextStyle(
          fontSize: 18, 
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 16, 
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.pink,
        type: BottomNavigationBarType.fixed,
        currentIndex: abaSelecionanada,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,

        onTap: (indice) {
          setState(() {
            abaSelecionanada = indice;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle_sharp),
            label: "Conta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Carrinho",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: "Mais",
          ),
        ],
      ),
    );
  }
}
