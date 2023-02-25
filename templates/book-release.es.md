## Publicar la versión del libro <insertar versión>

### Mantenimiento de repositorios entre versiones

- [ ] Mira el seguimiento de issues de [la guía de desarrollo](https://github.com/ropensci/dev_guide/issues) y de [meta revisión del software](https://github.com/ropensci/software-review-meta/issues) para revisar los cambios pendientes en la guía de desarrollo. Asigna los issues de la guía de desarrollo a los *milestones* correspondientes a las versiones, ya sea la siguiente o la versión que viene luego de esa, por ejemplo [versión 0.3.0](https://github.com/ropensci/dev_guide/milestone/2). Fomenta la creación de PR y haz que sean revisados.

### 1 mes antes de la publicación

- [ ] Recuerda al equipo de edición que abran issues/PRs sobre los temas que quieran incluir en la próxima versión.

- [ ] Ejecuta [la función `devguide_prerelease()`](https://github.com/ropensci-org/devguider) del paquete `devguider`.

- [ ] Pide al equipo de edición cualquier devolución que necesites de ellos/ellas antes de la publicación.

- [ ] Para cada contribución/cambio, asegúrate de que se han actualizado las *NEWS* en Appendix.Rmd.

- [ ] Planifica una fecha para la publicación en comunicación con quien sea Community Manager de rOpenSci, que te dará una fecha para publicar un artículo en el blog/nota técnica.

### 2 semanas antes del lanzamiento

- [ ] Redacta un artículo para el blog/nota técnica sobre el lanzamiento con suficiente antelación para que el equipo de edición y luego el/la Community Manager puedan revisarlo (2 semanas). [Ejemplo](https://github.com/ropensci/roweb3/pull/291), [Instrucciones generales para artículos de blog](https://github.com/ropensci/roweb2#contributing-a-blog-post), [instrucciones específicas para articulos de lanzamiento](#releaseblogpost).

- [ ] Haz un PR de la *branch dev* a la *branch master*, notifica al equipo de edición en GitHub y Slack. Menciona el borrador del artículo del blog en un comentario en ese PR.

### Publica

- [ ] Comprueba las URL utilizando [la función `devguide_urls()` del paquete {devguider}](https://github.com/ropensci-org/devguider)

- [ ] Comprueba la ortografía con [la función `devguide_spelling()` del paquete {devguider}](https://github.com/ropensci-org/devguider). Actualiza la [LISTA DE PALABRAS](https://github.com/ropensci/dev_guide/blob/master/inst/WORDLIST) según sea necesario.

- [ ] Unifica los *commits* (*squash*) y haz *merge* del PR de *dev* a *master*.

- [ ] Revisa la publicación en GitHub, consulta la publicación en Zenodo.

- \[ \] Genera el libro (para actualizar los metadatos de Zenodo en el libro) o espera a la compilación diaria

- [ ] Vuelve a crear la branch de desarrollo

- [ ] Termina el PR de tu artículo para el blog / nota técnica. Subraya los aspectos más importantes que deben destacarse en los tweets como parte de la discusión del PR.


