## Publicar versión del libro <insertar versión>

### Mantenimiento de repositorios entre versiones

- [ ] Mira el seguimiento de issues para [la guía de desarrollo](https://github.com/ropensci/dev_guide/issues) y para [meta revisión del software](https://github.com/ropensci/software-review-meta/issues) para los cambios pendientes en la guía dev. Asigna los issues de la guía de desarrollo a los hitos correspondientes a las versiones, ya sea la siguiente o la siguiente, por ejemplo [versión 0.3.0](https://github.com/ropensci/dev_guide/milestone/2). Fomenta los PR, haz que los revisen.

### 1 mes antes de la publicación

- [ ] Recuerda a los editores que abran issues/PRs para los elementos que quieran ver en la próxima versión.

- [ ] Ejecuta [la página `devguide_prerelease()` función](https://github.com/ropensci-org/devguider) de la `devguider` paquete.

- [ ] Pide a los editores cualquier devolución que necesites de ellos antes de la publicación.

- [ ] Para cada contribución/cambio, asegúrate de que se han actualizado las NOTICIAS en Appendix.Rmd.

- [ ] Planifica una fecha para la publicación en comunicación con el Community Manager de rOpenSci, que te dará una fecha para publicar una entrada en el blog / nota técnica.

### 2 semanas antes del lanzamiento

- [ ] Redacta una entrada de blog / nota técnica sobre el lanzamiento con suficiente antelación para que los editores y luego el Community Manager puedan revisarla (2 semanas). [Ejemplo](https://github.com/ropensci/roweb3/pull/291), [Instrucciones generales para entradas de blog](https://github.com/ropensci/roweb2#contributing-a-blog-post), [instrucciones específicas para entradas de liberación](#releaseblogpost).

- [ ] Haz un PR de la rama dev a la rama master, haz ping a los editores en GitHub y Slack. Menciona el borrador de la entrada del blog en un comentario en este PR.

### Publica

- [ ] Comprueba las URL utilizando [la página `devguide_urls()` de la función {devguider} paquete](https://github.com/ropensci-org/devguider)

- [ ] Comprueba la ortografía con [la página `devguide_spelling()` de la función {devguider} paquete](https://github.com/ropensci-org/devguider). Actualiza la función [LISTA DE PALABRAS](https://github.com/ropensci/dev_guide/blob/master/inst/WORDLIST) según sea necesario.

- [ ] Aplasta y fusiona el PR de dev a master.

- [ ] Publicación en GitHub, consulta la publicación en Zenodo.

- \[ \] Reconstruye (para actualizar los metadatos de Zenodo en el libro) o espera a la compilación diaria

- [ ] Vuelve a crear la branch de desarrollo

- [ ] Termina tu entrada de blog / nota técnica PR. Subraya los aspectos más importantes que deben destacarse en los tweets como parte del debate de relaciones públicas.


