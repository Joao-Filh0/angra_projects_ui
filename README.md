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

1. Sempre utilize a palavra **Angra** ao criar um novo arquivo ou classes sejam elas Widget ou Helpers. Esta regra também se aplica aos Enums e Extensions.
2. Prefira sempre usar o padrão do Flutter: camelCase para declarar variáveis, PascalCase para classes, e snake_case
   para nomes de arquivos e diretórios.
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
      ref: 0.0.1 # adicione o número da versao release
```

para mais informações acesse
o [link](https://docs.flutter.dev/packages-and-plugins/using-packages?gclid=CjwKCAjwp6CkBhB_EiwAlQVyxUxZd7WLxTRZkY6i-0zuOa4Wr0OIZb-PrzZWCXwX-qWbE974yf4DLBoCj9AQAvD_BwE&gclsrc=aw.ds)

### Documentação

Use o comando ```flutter build web --profile --source-maps``` para fazer o build web.

Veja a documentação online clicando em [doc](https://example-ui-519b7.web.app).

Para rodar a documentão de examplo ```/angra_projects_ui/example/lib/main.dart``` .

#### Como versionar


Utilizaremos versionação semântica que segue o padrão MAJOR.MINOR.PATCH, onde:

**MAJOR:** indica uma mudança incompatível. Isso significa que algo mudou que pode quebrar a compatibilidade com versões anteriores do software. Quando isso acontece, a versão principal é incrementada.

**MINOR:** representa uma nova funcionalidade ou um conjunto de funcionalidades que são compatíveis com versões anteriores. Sempre que você adiciona funcionalidades que não quebram a compatibilidade com versões anteriores, você incrementa a versão minor.

**PATCH:** refere-se a correções de bugs e outras alterações semelhantes que não afetam a compatibilidade com versões anteriores. Quando você faz uma correção de bug ou uma mudança pequena que não adiciona novas funcionalidades e não quebra a compatibilidade, você incrementa a versão de patch.