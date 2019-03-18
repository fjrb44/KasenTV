/* FK TABLAS PRINCIPALES */

ALTER TABLE video add CONSTRAINT
  `fkCategoriaVideo` FOREIGN KEY (`categoriaId`) references categoria(`id`)
  on delete cascade;

alter table video add CONSTRAINT
  `fkUsuarioVideo`  FOREIGN KEY(`usuarioId`) references usuario(`id`)
  on delete cascade;

alter table usuario add CONSTRAINT
  `fkIdiomaUsuario` FOREIGN KEY (`idiomaId`) references idioma(`id`)
  on delete cascade;

alter table lista add CONSTRAINT
  `fkUsuarioLista` FOREIGN KEY (`usuarioId`) references usuario(`id`)
  on delete cascade;

/* FK TABLAS SECUNDARIAS */

alter table suscribir add CONSTRAINT
  `fkCanalSuscribir` FOREIGN KEY (`canalId`) references usuario(`id`)
  on delete cascade;

alter table suscribir add CONSTRAINT
  `fkUsuarioSuscribir` FOREIGN KEY (`usuarioId`) references usuario(`id`)
  on delete cascade;

alter table pertenecer add CONSTRAINT
  `fkListaPertenecer` FOREIGN KEY (`listaId`) references lista(`id`)
  on delete cascade;

alter table pertenecer add CONSTRAINT
  `fkVideoPertenecer` FOREIGN KEY (`videoId`) references video(`id`)
  on delete cascade;

alter table etiquetar add CONSTRAINT
  `fkVideoEtiquetar` FOREIGN KEY (`videoId`) references video(`id`)
  on delete cascade;

alter table etiquetar add CONSTRAINT
  `fkEtiquetaEtiquetar` FOREIGN KEY (`etiquetaId`) references etiqueta(`id`)
  on delete cascade;

alter table ver add CONSTRAINT
  `fkVideoVer` FOREIGN KEY (`videoId`) references video(`id`)
  on delete cascade;

alter table ver add CONSTRAINT
  `fkUsuarioVer` FOREIGN KEY (`usuarioId`) references usuario(`id`)
  on delete cascade;

alter table comentar add CONSTRAINT
  `fkComentarioComentar` FOREIGN KEY (`comentarioId`) references comentario(`id`)
  on delete cascade;

alter table comentar add CONSTRAINT
  `fkUsuarioComentar` FOREIGN KEY (`usuarioId`) references usuario(`id`)
  on delete cascade;

alter table comentar add CONSTRAINT
  `fkVideoComentar` FOREIGN KEY (`videoId`) references video(`id`)
  on delete cascade;
