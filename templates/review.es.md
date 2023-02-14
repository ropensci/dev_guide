---
title: "review"
output: 
  rmarkdown::md_document:
    pandoc_args: [
      "--wrap=none"
    ]
---

## Revisión de un paquete

*Por favor trata de marcar tantas casillas como te sea posible y elabora tus argumentos en comentarios abajo de cada una. Tu revisión no está limitada a estos temas, tal como se describe en la guía para revisores.*

**Por favor describe cualquier relación de trabajo que tengas/hayas tenido con los autores del paquete)**

- [ ] Como revisor confirmo que no tengo [conflictos de interés](https://devguide.ropensci.org/policies.html#coi) para poder hacer la revisión de este trabajo (si no estás seguro si tienes un conflicto por favor entra en contacto con tu editor *antes de* de arrancar con la revisión.

#### Documentación

El paquete incluye todos los siguientes tipos de documentación:

- [ ] **Una declaración de necesidades** que describa claramente las necesidades que el software está diseñado para resolver y el objetivo público que busca atender en el archivo README
- [ ] **Instrucciones de instalación** de la versión en desarrollo del paquete incluyendo cualquier dependencia no-estándar en el archivo README
- [ ] **Viñeta(s)** demostrando la funcionalidad principal que además corren localmente
- [ ] **Documentación de las funciones** exportadas
- [ ] **Ejemplos** (que corren localmente) para todas las funciones exportadas
- [ ] **Directrices comunitarias** incluyendo una guía de contribución en el archivo README o el archivo CONTRIBUTING y un archivo DESCRIPTION que incluye `URL`, `BugReports` y `Maintainer` (todas en inglés por concenvión y para que puedan ser autogeneradas con `Authors@R`).

#### Funcionalidad

- [ ] **Instalación:** La instalación se completa con éxito tal como fue documentada.
- [ ] **Funcionalidad:** Toda afirmación de funcionalidad del software se confirma como existente.
- [ ] **Desempeño:** Toda afirmación de desempeño del software se confirma como alcanzada.
- [ ] **Pruebas automáticas:** Hay pruebas unitarias que cubren las funciones esenciales dentro del paquete con un rango razonable de entradas y condiciones. Todas las pruebas se realizan en la máquina local.
- [ ] **Directrices de embalaje** El paquete cumple las directrices de empaquetado de rOpenSci.

Estimación de horas dedicadas a la revisión:

- [ ] Si la(s) persona(s) autora(s) lo considera(n) apropiado(s), yo estoy de acuerdo con que me reconozcan como revisor del paquete (el rol "rev') en el archivo DESCRIPTION del paquete.

***

### Comentarios de la revisión


