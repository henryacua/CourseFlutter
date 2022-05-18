import 'package:flutter/material.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Column(
          children: const [
            Text('La mejor tienda de ropa',
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Lato",
                fontSize: 14,
              ),),
            Text('Agregar Nuevo Producto',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Lato",
                  fontSize: 13,
                  fontWeight: FontWeight.w900
              ),)
          ]
      ),
      leading:
      IconButton(
        icon: const Icon(Icons.navigate_before),
        color: Colors.black,
        tooltip: 'Go to the before page',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Next page'),
                ),
                body: const Center(
                  child: Text(
                    'This is the next page',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              );
            },
          ));
        },
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(70);
}
