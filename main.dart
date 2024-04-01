import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exibir Imagem'),
        ),
        body: ImageDisplay(),
      ),
    );
  }
}

class ImageDisplay extends StatefulWidget {
  @override
  _ImageDisplayState createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  final String imageUrl = 'https://ih1.redbubble.net/image.4598241582.6557/st,small,507x507-pad,600x600,f8f8f8.jpg';

  void _reloadImage() {
    // Este método pode ser usado para recarregar a imagem ou realizar outra ação
    // Atualmente, ele apenas chama setState para forçar a reconstrução da UI
    // Isso não faz nada neste caso específico, já que a URL da imagem não muda
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _reloadImage, // Definindo a ação do botão
        child: Image.network(imageUrl, fit: BoxFit.cover), // Carregando a imagem da internet
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Removendo o padding padrão para o botão abranger a imagem
        ),
      ),
    );
  }
}