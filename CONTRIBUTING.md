# Contribuições

## Pull requests
Os passos para contribuir com a evolução do código, seja para resolução de bugs ou criação de features são os seguintes:

- Criar um fork do projeto
- Criar um branch novo
- Realizar mudanças ou adicionar a features
- Commitar mudanças e enviá-las para o remoto
- Realizar pull request e atribuir a um revisor
- Caso existam revisões: realizar novos commits no mesmo branch criado e enviar para o remoto

Um exemplo de resolução de bug seguiria o seguinte fluxo:

``` shell
$ ontime (master) > git pull origin master
$ ontime (master) > git checkout -b bug/bug-xpto
$ ontime (bug/bug-xpto) > git commit -a -m "Minhas modificações"
$ ontime (bug/bug-xpto) > git push origin bug/bug-xpto
```

Depois abra um Pull Request para sua modificação.