## Versão de lançamento do livro <insira a versão>

### Manutenção do repositório entre lançamentos

- [ ] Consulte a página de problemas para [o guia dev](https://github.com/ropensci/dev_guide/issues) e também para o repositório [de revisões de software](https://github.com/ropensci/software-review-meta/issues), procure por mudanças que ainda devem ser feitas no guia dev. Atribua os problemas encontrados no guia dev ao marco correspondente às versões, seja esta a próxima versão, ou, às versões seguintes, e.g [versão 0.3.0](https://github.com/ropensci/dev_guide/milestone/2). Encoraje novos PRs e revise eles.

### 1 mês antes do lançamento

- [ ] Lembre os editores de abrirem problemas/PRs para itens que desejam ver na próxima versão.

- [] Execute [a função `devguide_prerelease()`](https://github.com/ropensci-org/devguider) do pacote `devguider`.

- [ ] Peça aos editores por qualquer feedback que você precise antes do lançamento.

- [ ] Para cada contribuição/alteração verifique se as NOTÍCIAS no arquivo `Appendix.Rmd` foram atualizadas.

- [ ] Planeje uma data para o lançamento e se comunique com o/a gerente da comunidade da rOpenSci, que lhe dará uma data para publicar uma postagem no blog (ou nota técnica).


### 2 semanas antes do lançamento

- [ ] Escreva um rascunho para uma postagem de blog (ou nota técnica) sobre o lançamento com antecedência suficiente para que os/as editores/as e, em seguida, o/a gerente da comunidade, possam revisá-lo (2 semanas). [Exemplo](https://github.com/ropensci/roweb3/pull/291), [instruções gerais para a postagem no blog](https://blogguide.rpensci.org/), [instruções específicas para as postagens de lançamento](#releaseblogpost).

- [] Crie um PR a partir da branch `dev` para a branch `master` e, em seguida, comunique aos editores através do GitHub e do Slack. Mencione o rascunho da postagem do blog em um comentário dentro deste PR.

### Lançamento

- [] Verifique as URLs usando [a função `devguide_urls()` do pacote {devguider}](https://github.com/ropensci-org/devguider)

- [] Verifique a ortografia usando [a função `devguide_spelling()` do pacote {devguider}](https://github.com/rpensci-org/devguider). Atualize também a [WORDLIST](https://github.com/ropensci/dev_guide/blob/master/inst/WORDLIST) conforme necessário.

- [ ] Realize um squash sobre os seus commits para o PR de `dev` para `master`.

- [ ] Atualize a página de *release* do GitHub, e confira a página de *release* do Zenodo.

- [ ] Reconstrua (para atualizar os metadados do livro no Zenodo) ou aguarde o processo diário de construção do livro.

- [ ] Crie novamente a branch `dev`.

- [ ] Conclua o PR com a sua postagem de blog (ou nota técnica). Destaque os aspectos mais importantes a serem destacados em tweets (e publicações) como parte da discussão do PR.

