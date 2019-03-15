/* TABLAS PRINCIPALES */

CREATE TABLE IF NOT EXISTS video{
  id int(255) not null auto_increment, /* Cambiar en un futuro */
  descripcion varchar(),
  nombre varchar(50) not null,
  estado enum('public', 'private', 'shared') not null,
  fechaSubida date() not null,
  imagen varchar(255) not null,

  categoriaId int(255),
  usuarioId int(255)
}

create table if not exists usuario{
  id int(255) not null auto_increment,
  nick varchar(255) not null,
  mail varchar(255) not null,
  password varchar(255) not null,
  logo varchar(255),
  fechaCreacion date() not null,

  idiomaId int(255)
}

create table if not exists listas{
  id int(255) not null auto_increment,
  descripcion int(255),
  nombre varchar(50) not null,
  fechaCreacion date() not null,

  usuarioId int(255)
}

create table if not exists comentario{
  id int(255) not null auto_increment,
  texto varchar(255),
  fecha date(),
  baneado boolean
}

create table if not exists categoria{
  id int(255) not null auto_increment,
  nombre varchar(255) not null
}

create table if not exists etiqueta{
  id int(255) not null auto_increment,
  nombre varchar(255) not null
}

create table if not exists idioma{
  id int(255) not null auto_increment,
  nombreCorto varchar(2) not null,
  nombre varchar(20)
}

/* TABLAS DEPENDIENTES */

create table if not exists suscribir{
  canalId int(255) not null,
  usuarioId int(255) not null
}

create table if not exists pertenecer{
  listasId int(255) not null,
  videoId int(255) not null
}

create table if not exists etiquetar{
  videoId int(255) not null,
  etiquetaId int(255) not null
}

create table if not exists ver{
  terminado boolean not null,
  segundos int(255) not null,
  valoracion int(1),

  videoId int(255) not null,
  usuarioId int(255) not null
}

create table if not exists comentar{
  comentarioId int(255),
  usuarioId int(255),
  videoId int(255)
}
