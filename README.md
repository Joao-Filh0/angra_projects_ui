# Angra Example UI



### Estrutura do Projeto

```
lib/
|___ angra_projects_ui.dart # Arquivo principal do pacote que exporta todos os recursos
|___ commons/               # Diretório para componentes comuns do aplicativo
|   |___ enums/              # Diretório para enums comumente usados.
|   |___ extensions/        # Diretório para extensões Dart comumente usados.
|   |___ helpers/           Diretório para funções auxiliares comuns
|
|___ widgets/               # Contém a lógica de apresentação e os componentes de UI da aplicação.   
```

### Convenções

1. Sempre utilize a palavra **Angra** ao criar um novo arquivo ou classe widget. Esta regra também se aplica aos enums.
2. Prefira sempre usar o padrão do Flutter: camelCase para declarar variáveis, PascalCase para classes, e snake_case
   para nomes de arquivos.
3. Sempre exporte os widgets, enums, helpers ou extensions no arquivo ```angra_projects_ui.dart```

### Como instalar

Adicione as seguintes linhas ao pubspec.yaml

```yaml
  angra_projects_ui:
    git:
      url: git@github.com:github-user/angra_projects_ui.git 
      ref: 0.0.1 # adicione a versão atualizada
```


### Como adicionar novos Icones

Para adicionar novos  icones basta colar seu ```icon.svg``` no diretório ```assets/icons```
em seguida rode o comando: 

```shell
dart run scripts/generate_icons.dart 
```


### Documentação
Vá para ```/angra_projects_ui/example/lib/main.dart``` para rodar a documentão de examplo.