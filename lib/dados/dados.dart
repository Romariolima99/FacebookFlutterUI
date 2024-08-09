// ignore: unnecessary_import
import 'package:my_flutter_web_app/modelos/usuario.dart';
import 'package:my_flutter_web_app/modelos/modelos.dart';

/*
* Fontes imagens: https://source.unsplash.com/
* Foto específica:
*   https://source.unsplash.com/JQFHdpOKz2k/800x600
* Foto aleatória:
*   https://source.unsplash.com/9ChfwZzv4ys/800x600
* */

/* Usuário Logado */


/* Usuário Logado */
Usuario usuarioAtual = Usuario(
    nome: "Romário Lima",
    urlImagem: "https://i.imgur.com/SR4R4Mc.jpg"
);

/* Lista de usuários online */
List<Usuario> usuariosOnline = [
  Usuario(
      nome: "Mauro Moura",
      urlImagem: "https://i.imgur.com/xrghQtZ.jpg"
  ),
  Usuario(
      nome: "Michael Heming",
      urlImagem: "https://i.imgur.com/HjibMuy.jpg"
  ),
  Usuario(
      nome: "Jean Zahn",
      urlImagem: "https://i.imgur.com/H9H4FJQ.jpg"
  ),
  Usuario(
      nome: "Gabriel Marcato",
      urlImagem: "https://i.imgur.com/maTiRbk.jpg"
  ),
  Usuario(
      nome: "João Vitor",
      urlImagem: "https://i.imgur.com/QqF72xG.jpg"
  ),
  Usuario(
      nome: "Wilhan Azevedo",
      urlImagem: "https://i.imgur.com/VRtTQYZ.jpg"
  ),
  Usuario(
      nome: "Vinicius Dal zot",
      urlImagem: "https://i.imgur.com/YU7mqL0.jpg"
  ),
  Usuario(
      nome: "Johnny hoffmann",
      urlImagem: "https://i.imgur.com/hCSdKRm.jpg"
  ),
];

/* Lista de estórias */
List<Estoria> estorias = [
  Estoria(
      usuario: usuariosOnline[0],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68",
      foiVisualizado: true,
  ),
  Estoria(
      usuario: usuariosOnline[1],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68",
      foiVisualizado: true,
  ),
  Estoria(
      usuario: usuariosOnline[2],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68",
  ),
  Estoria(
      usuario: usuariosOnline[3],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68", 
  ),
  Estoria(
      usuario: usuariosOnline[4],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68", 
  ),
  Estoria(
      usuario: usuariosOnline[5],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68", 
  ),
  Estoria(
      usuario: usuariosOnline[6],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68", 
  ),
  Estoria(
      usuario: usuariosOnline[7],
      urlImagem: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68", 
  ),
];

/* Lista de postagens */
List<Postagem> postagens = [
  Postagem(
      usuario: usuariosOnline[0],
      descricao: "caramba, olha este site que o Romário desenvolveu!",
      tempoAtras: "20m",
      urlImagem: "https://i.imgur.com/OveOnVX.png",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[1],
      descricao: "Quero compartilhar com você algo que aconteceu...",
      tempoAtras: "40m",
      urlImagem: "https://i.imgur.com/WnA8maY.png",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[2],
      descricao: "Não recomendo esse lugar, não fomos bem atendidos",
      tempoAtras: "55m",
      urlImagem: "https://i.imgur.com/NVk8Cwu.png",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[3],
      descricao: "Este mês batemos todos os recordes de vendas!",
      tempoAtras: "1h",
      urlImagem: "https://i.imgur.com/vNg6oZx.jpg",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[4],
      descricao: "Preciso de indicações de eletricista, meu chuveiro pifou :(",
      tempoAtras: "2h",
      urlImagem: "https://i.imgur.com/jne2SOw.jpg",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[5],
      descricao: "Que chuva maravilhosa!",
      tempoAtras: "2d",
      urlImagem: "https://i.imgur.com/Xve2k0T.jpg",
      curtidas: 30,
      comentarios: 3,
      compartilhamentos: 5
  ),
  Postagem(
      usuario: usuariosOnline[6],
      descricao: "Este simulador é incrivel!",
      tempoAtras: "3d",
      urlImagem: "https://i.imgur.com/Z8M3Xlu.jpg",
      curtidas: 100,
      comentarios: 30,
      compartilhamentos: 3
  ),
  Postagem(
      usuario: usuariosOnline[7],
      descricao: "Aprendi a arte da pesca com o Romário, o cara é do bone virado!",
      tempoAtras: "3d",
      urlImagem: "https://i.imgur.com/uoG4pjp.jpg",
      curtidas: 230,
      comentarios: 25,
      compartilhamentos: 3
  ),
];