import 'package:flutter/material.dart';

void main(){
runApp(Appconta());
}

class Appconta extends StatefulWidget {
  const Appconta({super.key});

  @override
  State<Appconta> createState() => _AppcontaState();
}

class _AppcontaState extends State<Appconta> {
   int abaSelecionanada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          iconTheme:  IconThemeData(
            color: Colors.white,
            size: 40,),
            backgroundColor: Colors.pink,
            title: Image.asset("asset/images/person.png",
            width: 100,
            height: 50,
            alignment: Alignment.topRight,),
        ),
        drawer: Drawer( 
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            spacing: 30,
            children: [
          
            Image.asset("asset/images/shopping-cart.png",
            height: 80,
            width: 60,),

            Text("Shopping",
            style: TextStyle(
                    color: const Color.fromARGB(246, 248, 1, 104),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
          
            TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              labelText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
             ),
            ),
          
            Column(
              spacing: 1,
              children: [
                TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                 ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child:             TextButton(onPressed: () {},
                child: Text(("Esqueceu a senha?"),
                 textAlign: TextAlign.right,),
                ),
                )
              ],
            ),
          

          

          
          
            SizedBox(
              height: 40,
              width: 500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //fixedSize:  Size(140, 45),
                  textStyle:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  backgroundColor:  Colors.pink,
                  foregroundColor:  Color.fromARGB(246, 243, 241, 242),
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
          
                TextButton(onPressed: () {},
                child: Text(("Cadastre-se"),
                style: TextStyle(color: Colors.pink, ),
                 ),
                ),
              ],
             ),
            ],//children
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pink,
          type: BottomNavigationBarType.fixed,
          currentIndex: abaSelecionanada,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
        
        onTap: (indice) {
          setState(() {
            abaSelecionanada = indice;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio",),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_sharp), label: "Conta"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Carrinho"),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted), label: "Mais"),
        ],
        ),
      ),
    );
  }
}