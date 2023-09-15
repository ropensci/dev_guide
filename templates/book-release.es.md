## Publicación del libro, versión <insertar versión>

### Mantenimiento de repositorios entre versiones

-   [ ] Mira los *issues* de [la guía de desarrollo](https://github.com/ropensci/dev_guide/issues) y del [meta de revisión del software](https://github.com/ropensci/software-review-meta/issues) para revisar los cambios pendientes en la guía de desarrollo. Asigna los *issues* de la guía de desarrollo a los *milestones* correspondientes a cada versión, ya sea la siguiente o la versión que viene luego de esa, por ejemplo [versión 0.3.0](https://github.com/ropensci/dev_guide/milestone/2). Fomenta la creación de PR y haz que sean revisados.

### 1 mes antes de la publicación

-   [ ] Recuerda al equipo de edición que abran *issues* o PRs sobre los temas que quieran incluir en la próxima versión.

-   [ ] Ejecuta [la función `devguide_prerelease()`](https://github.com/ropensci-org/devguider) del paquete `devguider`.

-   [ ] Pide al equipo de edición cualquier devolución que necesites antes de la publicación.

-   [ ] Por cada contribución o cambio, asegúrate de que se hayan actualizado las *NEWS* en Appendix.Rmd.

-   [ ] Coordina una fecha para la publicación con quien sea Community Manager de rOpenSci, quien te dará una fecha para publicar un artículo en el blog o nota técnica.

### 2 semanas antes de publicar

-   [ ] Redacta un artículo para el blog o nota técnica sobre el lanzamiento con suficiente antelación para que el equipo de edición, y luego quien sea Community Manager puedan revisarlo (2 semanas).
    [Ejemplo](https://github.com/ropensci/roweb3/pull/291), [Instrucciones generales para artículos de blog](https://blogguide.ropensci.org/), [instrucciones específicas para articulos de lanzamiento](#releaseblogpost).

-   [ ] Haz un PR de la *branch* dev a la *branch* master, notifica al equipo de edición en GitHub y Slack.
    Menciona el borrador del artículo del blog en un comentario en ese PR.

### Publicación

-   [ ] Comprueba las URL utilizando [la función `devguide_urls()` del paquete {devguider}](https://github.com/ropensci-org/devguider).

-   [ ] Comprueba la ortografía con [la función `devguide_spelling()` del paquete {devguider}](https://github.com/ropensci-org/devguider).
    Actualiza la [LISTA DE PALABRAS](https://github.com/ropensci/dev_guide/blob/master/inst/WORDLIST) según sea necesario.

-   [ ] Unifica los *commits* (*squash*) y haz *merge* del PR de *dev* a *master*.

-   [ ] Crea un *release* en GitHub, asegúrate de que se cree un *release* en Zenodo.

-   [ ] Re-genera el libro (para actualizar los metadatos de Zenodo en el libro) o espera a la compilación diaria.

-   [ ] Vuelve a crear la *branch* dev.

-   [ ] Termina el PR de tu artículo para el blog o nota técnica.
    Indica los aspectos más importantes que deben destacarse en los tweets como parte de la discusión del PR.
