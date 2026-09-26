# 27  Comandos del bot

## 27.1 Para todo el mundo

Ten en cuenta que limpiamos los *issues* eliminando el contenido superfluo, por lo que la mayoría de las veces el registro de que has pedido ayuda a un bot se borrará u ocultará rápidamente.

### 27.1.1 Consulta la lista de comandos disponibles

Si necesitas un recordatorio rápido

``` markdown
@ropensci-review-bot help
```

### 27.1.2 Ver el código de conducta

``` markdown
@ropensci-review-bot code of conduct
```

## 27.2 Para las personas responsables del paquete

### 27.2.1 Comprueba el paquete con pkgcheck

Cuando tu paquete haya cambiado sustancialmente.

``` markdown
@ropensci-review-bot check package
```

### 27.2.2 Envía tu respuesta sobre la revisión

Para registrar tu respuesta al equipo revisor.

``` markdown
@ropensci-review-bot submit response <response-url>
```

donde `<response_url>` es el enlace al comentario de respuesta en el *issue*.

### 27.2.3 Finalizar la transferencia del repositorio

Una vez que hayas aceptado la invitación a la organización GitHub de rOpenSci y le hayas transferido tu repositorio GitHub, ejecuta este comando para recuperar el acceso de administración a tu repositorio.

``` markdown
@ropensci-review-bot finalize transfer of <package-name>
```

### 27.2.4 Obtener una nueva invitación tras la aprobación

Si se venció el plazo de una semana para aceptar la invitación a la organización ropensci en GitHub, ejecuta este comando para recibir una nueva.

``` markdown
@ropensci-review-bot invite me to ropensci/<package-name>
```

## 27.3 Para la persona encargada de la edición

### 27.3.1 Asignar la persona para editar esta revisión

``` markdown
@ropensci-review-bot assign @username as editor
```

### 27.3.2 Poner el envío en espera

Ver [política editorial](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.3.3 Indicar que el envío está fuera de alcance

No olvides publicar primero un comentario explicando la decisión y agradeciendo a las personas responsables del paquete su envío.

``` markdown
@ropensci-review-bot out-of-scope
```

## 27.4 Para la persona asignada como responsable de la edición

### 27.4.1 Poner el envío en espera

Ver [política editorial](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.4.2 Comprueba el paquete con pkgcheck

Generalmente se hace sólo en consultas previas al envío para revisión, o cuando las personas responsables del paquete indican que el paquete ha cambiado sustancialmente.

``` markdown
@ropensci-review-bot check package
```

### 27.4.3 Comprueba las normas estadísticas

Generalmente se hace sólo en consultas previas al envío para revisión, o cuando las personas responsables del paquete indican que el paquete ha cambiado sustancialmente.

``` markdown
@ropensci-review-bot check srr
```

### 27.4.4 Comprueba que el README tiene la etiqueta de revisión de software

Hacia el final del proceso de envío.

``` markdown
@ropensci-review-bot check readme
```

### 27.4.5 Indica que estás buscando personas para revisar

``` markdown
@ropensci-review-bot seeking reviewers
```

### 27.4.6 Asignar una persona al equipo revisor

``` markdown
@ropensci-review-bot assign @username as reviewer
```

o

``` markdown
@ropensci-review-bot add @username as reviewer
```

### 27.4.7 Eliminar una persona del equipo revisor

``` markdown
@ropensci-review-bot remove @username from reviewers
```

### 27.4.8 Ajustar la fecha límite de la revisión

``` markdown
@ropensci-review-bot set due date for @username to YYYY-MM-DD
```

### 27.4.9 Registra que se ha enviado una revisión

``` markdown
@ropensci-review-bot submit review <review-url> time <time in hours>
```

### 27.4.10 Aprobar un paquete

``` markdown
@ropensci-review-bot approve <package-name>
```
