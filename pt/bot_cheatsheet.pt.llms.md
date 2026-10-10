# 27  Comandos do bot

## 27.1 Para todos

Vale ressaltar que nós limpamos os tópicos de problemas ao remover todo conteúdo estranho, portanto, o registro de que você solicitou ajuda de bots será rapidamente apagado ou ocultado.

### 27.1.1 Veja a lista de comandos disponíveis para você

Se você precisar de um lembrete rápido!

``` markdown
@ropensci-review-bot help
```

### 27.1.2 Veja o código de conduta

``` markdown
@ropensci-review-bot code of conduct
```

## 27.2 Para autores

### 27.2.1 Verificar o pacote com o pkgcheck

Quando seu pacote tiver mudado substancialmente.

``` markdown
@ropensci-review-bot check package
```

### 27.2.2 Enviar resposta aos revisores

Para registrar sua resposta aos revisores.

``` markdown
@ropensci-review-bot submit response <response-url>
```

onde `<response_url>` é o link para o comentário de resposta no tópico do problema.

### 27.2.3 Finalizar a transferência do repositório

Depois que você aceitar o convite para a organização do GitHub do rOpenSci e transferir seu repositório do GitHub para ela, execute este comando para obter novamente o acesso de administrador ao seu repositório.

``` markdown
@ropensci-review-bot finalize transfer of <package-name>
```

### 27.2.4 Obter um novo convite após a aprovação

Se você perdeu o prazo de uma semana para aceitar o convite para a organização do rOpenSci no GitHub, execute isso para receber um novo convite.

``` markdown
@ropensci-review-bot invite me to ropensci/<package-name>
```

## 27.3 Para o editor-chefe

### 27.3.1 Atribua um (a) editor (a)

``` markdown
@ropensci-review-bot assign @username as editor
```

### 27.3.2 Colocar o envio em espera

Veja [política editorial](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.3.3 Indique que o envio está fora do escopo

Não se esqueça de publicar primeiro um comentário explicando a decisão e agradecendo ao(s) autor(es) pelo envio.

``` markdown
@ropensci-review-bot out-of-scope
```

## 27.4 Para o editor designado

### 27.4.1 Colocar o envio em espera

Veja [política editorial](#policiesreviewprocess).

``` markdown
@ropensci-review-bot put on hold
```

### 27.4.2 Verificar o pacote com o pkgcheck

Geralmente, apenas em consultas pré-submissão ou quando os autores indicam que o pacote foi substancialmente alterado.

``` markdown
@ropensci-review-bot check package
```

### 27.4.3 Verificar padrões estatísticos

Geralmente, apenas em consultas pré-submissão ou quando os autores indicam que o pacote foi substancialmente alterado.

``` markdown
@ropensci-review-bot check srr
```

### 27.4.4 Verifique se o README tem o selo de revisão de software

No final do processo de envio.

``` markdown
@ropensci-review-bot check readme
```

### 27.4.5 Indique que você está procurando revisores

``` markdown
@ropensci-review-bot seeking reviewers
```

### 27.4.6 Atribuir um (a) revisor (a)

``` markdown
@ropensci-review-bot assign @username as reviewer
```

ou

``` markdown
@ropensci-review-bot add @username as reviewer
```

### 27.4.7 Remover um (a) revisor (a)

``` markdown
@ropensci-review-bot remove @username from reviewers
```

### 27.4.8 Ajustar a data de vencimento da revisão

``` markdown
@ropensci-review-bot set due date for @username to YYYY-MM-DD
```

### 27.4.9 Registre que uma revisão foi enviada

``` markdown
@ropensci-review-bot submit review <review-url> time <time in hours>
```

### 27.4.10 Aprovar o pacote

``` markdown
@ropensci-review-bot approve <package-name>
```
