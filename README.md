# Angra Example UI

### Estrutura do Projeto

```
lib/
|___ angra_projects_ui.dart # Arquivo principal do pacote que exporta todos os recursos
|___ commons/              
|   |___ enums/             # Diretório para enums comumente usados.
|   |___ extensions/        # Diretório para extensions Dart comumente usados.
|   |___ helpers/           # Diretório para funções auxiliares.
|
|___ widgets/               # Contém os widgets de UI da aplicação.   
```

### Convenções

1. Sempre utilize a palavra **Angra** ao criar um novo arquivo ou classe widget. Esta regra também se aplica aos enums.
2. Prefira sempre usar o padrão do Flutter: camelCase para declarar variáveis, PascalCase para classes, e snake_case
   para nomes de arquivos.
3. Sempre exporte os widgets, enums, helpers ou extensions no arquivo ```angra_projects_ui.dart```
4. Utilizar o ChangeNotifier, ValueNotifier com o ValueListenableBuilder se precisar gerenciar o estado.

### Como adicionar novos Icones

Para adicionar novos icones basta colar seu ```icon.svg``` no diretório ```assets/icons```
em seguida rode o comando:

```shell
dart run scripts/generate_icons.dart 
```

### Como instalar

Adicione as seguintes linhas ao pubspec.yaml

```yaml
  angra_projects_ui:
    git:
      url: git@github.com:github-user/angra_projects_ui.git
      ref: 0.0.1 # adicione a versão atualizada
```

para mais informações acesse
o [link](https://docs.flutter.dev/packages-and-plugins/using-packages?gclid=CjwKCAjwp6CkBhB_EiwAlQVyxUxZd7WLxTRZkY6i-0zuOa4Wr0OIZb-PrzZWCXwX-qWbE974yf4DLBoCj9AQAvD_BwE&gclsrc=aw.ds)

### Documentação

Use o comando ```flutter build web --profile --source-maps``` para fazer o build web.

Veja a documentação online clicando em [doc](https://example-ui-519b7.web.app).

Para rodar a documentão de examplo ```/angra_projects_ui/example/lib/main.dart``` .