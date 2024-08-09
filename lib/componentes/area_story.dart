import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_flutter_web_app/componentes/imagem_perfil.dart';
import 'package:my_flutter_web_app/dados/dados.dart';
import 'package:my_flutter_web_app/modelos/estoria.dart';
import 'package:my_flutter_web_app/modelos/usuario.dart';
import 'package:my_flutter_web_app/uteis/paletasCores.dart';
import 'package:my_flutter_web_app/uteis/responsivo.dart';

class AreaStoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;

  const AreaStoria({
    super.key,
    required this.usuario,
    required this.estorias,
  });

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsivo.isDesktop(context);
    return Container(
      height: 200,
      color: isDesktop ? Colors.transparent: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + estorias.length,
          itemBuilder: (context, indice) {
            if (indice == 0) {
              Estoria estoriaUsuario = Estoria(
                  usuario: usuarioAtual, urlImagem: usuarioAtual.urlImagem);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: CartaoEstoria(
                  adicionarEstoria: true,
                  estoria: estoriaUsuario,
                ),
              );
            }
            Estoria estoria = estorias[indice - 1];

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CartaoEstoria(
                estoria: estoria,
              ),
            );
          }),
    );
  }
}

class CartaoEstoria extends StatelessWidget {
  final Estoria estoria;
  final bool adicionarEstoria;

  const CartaoEstoria({
    Key? key,
    required this.estoria,
    this.adicionarEstoria = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: PaletaCores.degradeEstoria,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
            top: 8,
            left: 8,
            child: adicionarEstoria
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(Icons.add),
                      iconSize: 30,
                      color: PaletaCores.azulfFacebook,
                      onPressed: () {},
                    ),
                  )
                : ImagemPerfil(
                    urlImagem: estoria.usuario.urlImagem,
                    foiVisualizado: estoria.foiVisualizado,
                  )
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    right: 8,
                    child: Text(
                   adicionarEstoria ? "Criar Story" : estoria.usuario.nome ,  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    
                   ),

                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                    ),
                    )
      ],
    );
  }
}
