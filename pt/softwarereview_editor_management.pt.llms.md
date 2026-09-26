# 9  Gerenciamento editorial

Orientações para gerenciar a equipe editorial e também sobre \[como gerenciar o lançamento de um guia de desenvolvimento\] (#bookrelease).

## 9.1 Recrutamento de novos editores

O recrutamento de novos(as) editores(as) e a manutenção de um conselho editorial suficiente e equilibrado é responsabilidade da pessoa [Líder de Revisão de Software](https://ropensci.org/about/#team) com o apoio e a orientação do conselho editorial.

- Novos(as) editores(as) são geralmente recrutados(as) sempre que não há pessoas editoras suficientes para lidar com os artigos enviados no momento, embora editores(as) convidados(as) também possam ser convidados(as) para artigos específicos.

- A carga editorial atual pode ser consultada na [página *Editors* do nosso painel de controle](https://dashboard.ropensci.org/editors.html).

### 9.1.1 Procurando um(a) novo(a) editor(a)

Alguns lugares onde o/a Líder de Revisão de Software pode começar a procurar novos(as) editores(as) incluem:

- A [página *Community Leaderboard* do nosso painel editorial](https://dashboard.ropensci.org/community.html), para ajudar a identificar pessoas que contribuíram bastante, mas ainda não atuaram como editoras.

- A lista de pessoas [*revisoras e ex-editoras*](#reviewers).

- Como alternativa, peça sugestões e indicações ao atual conselho editorial.

As decisões sobre novos(as) editores(as) devem, em geral, ser tomadas por toda a equipe, seguindo este procedimento geral:

- Crie um canal privado no Slack para a discussão e adicione todas as pessoas editoras.

  - É importante criar um novo canal privado para separar as discussões do canal geral dos(as) editores(as), ao qual os(as) futuros(as) editores(as) irão se juntar.

  - Envie uma menção no canal geral de editores(as) para garantir que todas as pessoas sejam notificadas sobre o novo canal privado.

  - Use esse canal para solicitar indicações gerais ou opiniões sobre possíveis candidatos(as).

- Você pode copiar e adaptar a seguinte mensagem para iniciar o canal:

      Vocês foram convidados(as) para este canal a fim de discutir a inclusão de um(a) novo(a) membro em nosso conselho editorial.
       Este canal é privado e será excluído assim que chegarmos a um consenso suficiente.
       A discussão deve ser construtiva e não conflituosa.
      Por favor, não faça capturas de tela e evite dar opiniões abertamente negativas.
       Em seguida, faça uma das seguintes opções:
       - Indique e descreva brevemente qualquer candidato(a) específico(a); ou
      \- Indique que você está buscando indicações, juntamente com quaisquer
       preferências específicas (como conhecimentos especializados)

- Concentre-se em novos(as) membros que irão sustentar a [diversidade](https://ropensci.org/blog/2025/02/05/no-science-without-deia/) e a representatividade global da equipe editorial.

- Aguarde até que a maioria das pessoas editoras se manifeste antes de convidar alguém. Dê cerca de uma semana para que respondam.

- Exclua o canal privado do Slack assim que o(a) novo(a) editor(a) tiver aceitado o convite.

### 9.1.2 Convidando um(a) novo(a) editor(a)

- As pessoas membros do comitê editorial geralmente começam atuando como [editoras convidadas](#guesteditor) para uma submissão inicial de teste.

- Envie um e-mail.

&nbsp;

    Gostaríamos de convidá-lo a fazer parte do conselho editorial da rOpenSci como membro efetivo. [RAZÕES ESPECÍFICAS PARA O CONVITE (MENCIONAR CONTRIBUIÇÕES PARA A rOpenSci)].
    Acreditamos que você seria um excelente incremento à equipe.

    [SE FOR EDITOR CONVIDADO -> Você está familiarizado(a) com a função do editor, pois já foi editor(a) convidado(a)]. Nosso objetivo é que os editores lidem com quatro pacotes por ano ([SE FOR EDITOR CONVIDADO -> incluindo o pacote que você acabou de finalizar!]).
    Pedimos que editores assumam um compromisso informal de servir por dois anos, reavaliando sua participação depois deste período.
    Em um curto prazo, qualquer editor pode se recusar a lidar com um pacote ou argumentar por exemplo “Estou muito ocupado e não posso lidar com um novo pacote por algumas semanas”.

    Além de lidar com pacotes, os editores participam das decisões editoriais do grupo, como, por exemplo, se um pacote está dentro do escopo e determinando atualizações em nossas políticas. 
    Geralmente, fazemos esse trabalho por meio do Slack, que esperamos que os editores possam verificar regularmente.
    Também, fazemos chamadas com o conselho editorial anualmente.
    Ademais, alternamos as responsabilidades do editor-chefe (decisões de escopo de primeira instância e designação de editores) entre o conselho editorial a cada três meses.
    Você terá a oportunidade de participar desse rodízio depois de fazer parte do conselho por algum tempo, geralmente isso significa pelo menos seis meses. 
    Alguns de nós também assumem projetos maiores para aprimorar o processo de revisão por pares, porém isso é opcional.

    Esperamos que você faça parte do conselho!
    Este é um momento empolgante para a revisão por pares na rOpenSci.

    Por favor, reflita sobre a nossa oferta e faça perguntas se algo não estiver claro. Nos informe se você pode juntar-se a equipe rOpenSci.

    Atenciosamente,
    [EDITOR], em nome do Conselho Editorial da rOpenSci

- Ao término do mandato como editor(a) convidado(a), geralmente lhes é perguntado se gostariam de se tornar membros efetivos.

## 9.2 Integrando um(a) novo(a) editor(a) ao time

- Adicionar ao [arquivo “team.json” do site](https://github.com/ropensci/roweb3/blob/main/data/team/team.json) com `"editor": true` e também `"stats": true` para editores(as) de estatísticas. Isso adicionará automaticamente novos editores à equipe editorial mostrada na página do [site da rOpenSci](https://ropensci.org/software-review/).

- Informe o(a) gerente da comunidade rOpenSci para que você possa preparar uma postagem introdutória no blog.

- Se eles ainda não fizeram este passo como editores convidados, solicite que ativem [a autenticação de dois fatores (2FA) para o GitHub](https://docs.github.com/en/authentication/securing-your-account-with-two-factor-authentication-2fa).

- Convide-os para a organização rOpenSci no GitHub como membro da equipe [`editors`](https://github.com/orgs/ropensci/teams/editors) e da equipe de editores de estatísticas [`stats-editors`](https://github.com/orgs/ropensci/teams/stats-editors). Isso dará a eles as permissões apropriadas e garantirá que apareçam no [painel de controle dos editores](https://dashboard.ropensci.org/editors).

- Convide-os para o banco de dados AirTable de análise de software (vinculado na descrição do canal, somente para editores, no Slack). Certifique-se de que o convite seja “Somente leitura”.

- Atualize o campo “editor” na tabela “reviewers-prod” do Airtable (isso é usado para identificar e listar os editores atuais nessa tabela). *Guia do desenvolvedor*).

- Convide-os para o canal privado “editors-only” no espaço de trabalho Slack da rOpenSci (e para o espaço de trabalho Slack em geral, se eles ainda não estiverem lá).

- Quando eles estiverem no canal “editors-only”, publique uma mensagem de boas-vindas informando todos os editores.

## 9.3 Colocando um(a) editor(a) em pausa

Às vezes, as pessoas editoras também precisam de uma pausa. Para colocar uma pessoa integrante da equipe editorial em pausa:

- Remova o usuário da [equipe “editors” do GitHub](https://github.com/orgs/ropensci/teams/editors), juntamente com a [equipe “stats-editors”](https://github.com/orgs/ropensci/teams/stats-editors), se for o caso.

- Defina o status “férias” no Airtable, incluindo uma data aproximada de quando possa retornar.

- Para “retomar” o status, basta reverter essas alterações.

## 9.4 Desvincular um(a) editor(a)

- Agradeça o(a) editor(a) por seu trabalho!

- Informe o(a) gerente da comunidade rOpenSci ou outros membros da equipe, para garantir que nossa newsletter anuncie sua saída, e para agradecer a essa pessoa.

- Remova-os do canal “editors-only” do Slack.

- Remova este(a) editor(a) de <https://github.com/orgs/ropensci/teams/editors/members> e da subequipe.

- Atualizar o [“team.json” no site](https://github.com/ropensci/roweb3/blob/main/data/team/team.json) substituindo “roles” por “past_roles” e adicionando um novo campo, `alumnus: "true"`.

- Remova o acesso do(a) editor(a) ao espaço de trabalho do Airtable.

  - Na exibição “interface”, abra o menu principal no canto superior esquerdo e digite “View Data” (Exibir dados)
  - Clique no botão “Share” (Compartilhar) no canto superior direito e, em seguida, em “People with access” (Pessoas com acesso)
  - Clique na caixa de seleção à esquerda do(a) editor(a) a ser removido(a) e em “Remove 1 collaborator” (Remover 1 colaborador/a).

- Alterar o rótulo “editor” para “Emérito” nos dados “reviewers-prod” do Airtable

- As listas de editores (anteriores) em ambos os capítulos do [dev_guide que apresenta a revisão de software](https://github.com/ropensci/dev_guide/blob/main/softwarereview_intro.Rmd) e do [software-review README](https://github.com/ropensci/software-review/blob/main/README.Rmd) são preenchidos automaticamente a partir dos dados do AirTable. As atualizações são executadas diariamente, portanto, verifique um dia após as atualizações do AirTable para garantir que ambos tenham sido atualizados.

## 9.5 Colocando o sistema em pausa

Se você quiser colocar o sistema em uma pausa, por exemplo, durante as férias, antes de sair:

- Adicione uma mensagem de férias ao campo `about` dos templates de issues. [Exemplo de PR](https://github.com/ropensci/software-review/pull/679/files).
- Adicione uma mensagem de férias à resposta de boas-vindas padrão do bot. [Exemplo de PR](https://github.com/ropensci-org/buffy/pull/108).

Ao retomar as atividades:

- Remover a mensagem de férias dos templates de issues. [Exemplo de PR](https://github.com/ropensci/software-review/pull/680).
- Remover a mensagem de férias da resposta de boas-vindas padrão do bot. [Exemplo de commit](https://github.com/ropensci-org/buffy/commit/500cfa07ca9dbaa138ca63eb255996e6f7331088).

## 9.6 Gerenciando o lançamento de um guia de desenvolvimento

Se você estiver encarregado de gerenciar uma versão do livro que está lendo, use [o guia de lançamento de livros](#bookreleaseissue) como um modelo de *issue* a ser publicado [no rastreador de problemas do guia de desenvolvimento](https://github.com/ropensci/dev_guide/issues). Não hesite em fazer perguntas a outros editores.

### 9.6.1 Governança do guia de desenvolvimento

Para alterações muito pequenas no guia de desenvolvimento, não é necessária fazer revisão de *pull request* (PR). Para alterações maiores, solicite a revisão de pelo menos alguns editores (se nenhum deles participou da discussão relacionada à alteração, solicite uma revisão de todos eles no GitHub e, na ausência de qualquer reação, faça o *merge* após 1 semana).

Duas semanas antes do lançamento de um guia de desenvolvimento, uma vez que o PR do dev para o *master* **e a postagem do blog de lançamento** estiverem prontos para revisão, todos os editores devem receber um *ping* no GitHub (“solicitação de revisão” no PR de dev para *master*) e do Slack, mas o lançamento não precisa que todos eles aprovem explicitamente o lançamento.

### 9.6.2 Postagem no blog sobre um lançamento

A postagem no blog sobre um lançamento será revisada [por editores](#devguidegov) e um dos `@ropensci/blog-editors`.

#### 9.6.2.1 Conteúdo

Consulte a [orientação geral sobre blogs da rOpenSci](https://blogguide.ropensci.org/) e as orientações mais específicas abaixo.

[Primeiro exemplo de uma postagem desse tipo](https://ropensci.org/blog/2019/05/16/dev-guide-update/); [segundo exemplo](https://ropensci.org/blog/2019/10/08/dev-guide-update-fall19/).

A postagem no blog deve mencionar todos os itens importantes do [changelog](#booknews), organizados em (sub)seções: e.g., uma seção sobre uma grande mudança A, outra sobre uma grande mudança B e uma sobre as mudanças menores agrupadas. Mencione as alterações mais importantes primeiro.

Para cada alteração feita por uma pessoa colaboradora externa, agradeça-a explicitamente usando as informações do *changelog*. Por exemplo, `[Matt Fidler](https://github.com/mattfidler/) modificou nossa seção sobre mensagens de console [ropensci/dev_guide#178](https://github.com/ropensci/dev_guide/pull/178)`.

No final da postagem, mencione as próximas alterações vinculando-as a problemas abertos no rastreador de problemas e convide as pessoas leitoras a contribuir com o guia de desenvolvimento abrindo *issues* e participando de discussões abertas. Modelo de conclusão:

``` markdown
Nesta postagem, resumimos as alterações incorporadas em nosso livro ["rOpenSci Packages: Development, Maintenance, and Peer Review"] (https://devguide.ropensci.org/) nos últimos X meses.
Somos gratos por todas as contribuições que tornaram possível esse lançamento.
Já estamos trabalhando em atualizações para a nossa próxima versão, como _issue1_, _issue2_.
Confira o [issue tracker] (https://github.com/ropensci/dev_guide/issues/) se você quiser contribuir.
```

#### 9.6.2.2 Autoria

O editor que está escrevendo a postagem é o primeiro autor, os outros editores estão listados em ordem alfabética.
