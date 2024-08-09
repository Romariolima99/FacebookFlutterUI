import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_web_app/dados/dados.dart';
import 'package:my_flutter_web_app/modelos/usuario.dart';
import 'package:my_flutter_web_app/uteis/responsivo.dart';

class AreaCriarPostagem extends StatelessWidget {
  final Usuario usuario;

  const AreaCriarPostagem({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
     bool isDesktop = Responsivo.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: isDesktop ? 5 : 0
      ),
      elevation: isDesktop ? 1 : 0,
      shape: isDesktop
        ? RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
        : null  ,
      child: Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(
                  usuario.urlImagem,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Expanded(
                  child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "No que você esta pensando?"),
              ))
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text(
                      "Ao Vivo",
                      style: TextStyle(color: Colors.black),
                    )),
                    const VerticalDivider(
                      width: 8,
                    ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text(
                      "Foto",
                      style: TextStyle(color: Colors.black),
                    )
                    ),
                    const VerticalDivider(
                      width: 8,
                    ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purple,
                    ),
                    label: const Text(
                      "Sala",
                      style: TextStyle(color: Colors.black),
                    )
                    )
                    
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
