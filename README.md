# Projeto de Testes Automatizados com Robot Framework

Este projeto utiliza o **Robot Framework** para automação de testes. Ele inclui testes automatizados para a o site https://walkdog.vercel.app

## Requisitos de Instalação

Certifique-se de ter as seguintes dependências instaladas:

- **Robot Framework**: Ferramenta principal para execução de testes.
  - Instalação e documentação: [Robot Framework](https://robotframework.org/#resources)
  
- **Python**: O Robot Framework requer Python para ser executado.
  - Faça o download aqui: [Python Downloads](https://www.python.org/downloads/)

- **Robot Framework Browser Library**: Biblioteca usada para automação de navegadores.
  - Veja a documentação e instalação: [RobotFramework Browser Library](https://github.com/MarketSquare/robotframework-browser#readme)

## Como Executar os Testes

Para executar os testes, use o seguinte comando no terminal:

bash

robot -d ./logs/ tests/signup.robot

Comandos para rodar os testes:
robot -d ./logs/ tests/signup.robot
Explicações:
- Robot = "Padrão"
- -d ./log = "para colocar os arquivos de log e report na pasta logs"
- tests = "Pasta onde estão os testes"
- signup.robot = "Arquivo do teste"

## Estrutura de pastas explicada

Estrutura de pastas:
- Logs (Onde ficam os reports e logs)
- resources (Oddnde ficam Ações, steps e elementos da funcionalidade)
- fixtures (Onde ficaa a imagem a ser incluida)
- tests (Onde fica os testes criados)
