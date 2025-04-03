# Calculadora Geométrica

Este é um projeto desenvolvido para realizar cálculos geométricos, permitindo determinar áreas, perímetros e volumes de diferentes formas geométricas.

## Tecnologias Utilizadas
- **Dart** (Linguagem de programação principal)
- **Flutter** (Framework para desenvolvimento multiplataforma)
- **Nix** (Gerenciamento de pacotes e ambiente de desenvolvimento)
- **HTML** (Estrutura para a interface web)
- **Kotlin** (Suporte para integração com Android)

## Funcionalidades
- Cálculo de áreas e perímetros de formas geométricas
- Determinação de volumes de sólidos geométricos
- Interface multiplataforma (Web e Mobile)

## Como Configurar o Projeto

### 1. Clonar o repositório
```sh
  git clone https://github.com/Siriusana/Calculadora-Geometrica.git
  cd Calculadora-Geometrica
```

### 2. Instalar dependências
```sh
  flutter pub get
```

### 3. Executar o projeto
```sh
  flutter run
```

## Estrutura do Projeto
```
/Calculadora-Geometrica
│── lib/
│   ├── main.dart          # Arquivo principal do app
│   ├── models/            # Modelos de dados matemáticos
│   ├── screens/           # Telas do aplicativo
│   ├── services/          # Serviços de cálculo geométrico
│   ├── utils/             # Funções utilitárias
│   └── widgets/           # Componentes reutilizáveis
│
│── web/                   # Interface web
│── android/                # Configuração para Android
│── pubspec.yaml           # Configuração do projeto e dependências
│── README.md              # Documentação
```

## Dependências Principais
Certifique-se de que seu `pubspec.yaml` inclui as seguintes dependências:
```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.5  # Requisições HTTP se necessário
  provider: ^6.0.5  # Gerenciamento de estado
  flutter_web: any  # Suporte para a versão web
```



