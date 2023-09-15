---
title: "review"
output: 
  rmarkdown::md_document:
    pandoc_args: [
      "--wrap=none"
    ]
---

## Revisión de un paquete

*Por favor trata de marcar tantas casillas como te sea posible y elabora tu opinión en tus comentarios. Tu revisión no está limitada a estos temas, tal como se describe en la guía de revisión.*

**Describe cualquier relación de trabajo que tengas o hayas tenido con quienes que crearon el paquete**

- [ ] Confirmo que no tengo [conflictos de interés](https://devguide.ropensci.org/policies.html#coi) para hacer la revisión de este trabajo (si no sabes si tienes un conflicto o no, por favor contáctate con la persona a cargo de la edición *antes de* de empezar con la revisión).

#### Documentación

El paquete incluye todos los siguientes tipos de documentación:

- [ ] **Una declaración de necesidades** el archivo *README* que describa claramente los problemas que el software está diseñado para resolver y a quiénes está dirigido.
- [ ] **Instrucciones de instalación** de la versión de desarrollo del paquete en el archivo *README*, incluyendo cualquier dependencia no estándar.
- [ ] **Una o varias viñeta** que muestren la funcionalidad principal, que además corren localmente.
- [ ] **Documentación de todas las funciones exportadas**.
- [ ] **Ejemplos** (que corren localmente) de todas las funciones exportadas-
- [ ] **Directrices comunitarias** incluyendo una guía de contribución en el archivo *README* o el archivo *CONTRIBUTING* y un archivo *DESCRIPTION* que incluye `URL`, `BugReports` y `Maintainer` (todos en inglés por convención y para que puedan ser autogenerados por `Authors@R`).

#### Funcionalidad

- [ ] **Instalación:** La instalación se completa con éxito tal como fue documentada.
- [ ] **Funcionalidad:** Se confirmaron todas las afirmaciones de funcionalidad.
- [ ] **Desempeño:** Se confirmaron todas las afirmaciones de desempeño.
- [ ] **Pruebas automáticas:** Hay *tests* unitarios que cubren las funciones esenciales dentro del paquete con un rango razonable de entradas y condiciones. Todas las pruebas corren correctamente en la computadora local.
- [ ] **Directrices de empaquetado:** El paquete cumple las directrices de empaquetado de rOpenSci.

Estimación de horas dedicadas a la revisión:

- [ ] Si quienes son responsables del paquete lo consideran apropiado, estoy de acuerdo en que se me reconozca en el archivo *DESCRIPTION* del paquete con rol de revisión ("rev").

***

### Comentarios de la revisión


