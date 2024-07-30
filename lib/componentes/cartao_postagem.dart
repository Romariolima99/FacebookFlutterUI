import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/componentes/imagem_perfil.dart';
import 'package:my_flutter_web_app/modelos/Postagem.dart';

class CartaoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CartaoPostagem({Key? key, required this.postagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(
                  postagem: postagem,
                ),
                Text(postagem.descricao)
              ],
            ),
          ),
          //imagem postagem
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(
              imageUrl: postagem.urlImagem,
            ),
          ),

          //estatisticas da postagem
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CabecalhoPostagem({Key? Key, required this.postagem}) : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        const SizedBox(
          width: 8,
        ),

        //informações do usuario
      Expanded(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postagem.usuario.nome,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "${postagem.tempoAtras} - "
                ),
                Icon(Icons.public, size: 12, color: Colors.grey[600],)
              ],
            )
          ],
        ),

      ),
       
        IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
      ],
    );
  }
}
