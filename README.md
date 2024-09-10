# Infraestrutura como Código (IaC) com Bash

Este repositório contém um script Bash para automatizar a configuração de infraestrutura em servidores Linux, seguindo o conceito de **Infraestrutura como Código (IaC)**. Ele cria automaticamente diretórios, grupos de usuários, usuários e define permissões de acesso aos diretórios, otimizando a gestão e controle de usuários em servidores.

## 📜 Descrição do Projeto

A infraestrutura como código (IaC) é uma prática que permite gerenciar e provisionar data centers por meio de arquivos de configuração, em vez de processos manuais. Este projeto demonstra uma aplicação simples dessa prática utilizando scripts Bash. O script automatiza:

- Criação de diretórios organizacionais;
- Criação de grupos de usuários específicos;
- Criação de usuários e associação a grupos;
- Definição de permissões detalhadas para os diretórios, garantindo controle de acesso apropriado.

### 🎯 Objetivo

O objetivo deste projeto é automatizar a configuração de infraestrutura básica em ambientes Linux, garantindo a consistência e repetibilidade das configurações, além de economizar tempo em tarefas administrativas.

---

## 🛠️ Funcionalidades

- **Criação de Diretórios**: Diretórios específicos para diferentes setores (e.g., `/adm`, `/ven`, `/ti`, `/publica`).
- **Criação de Grupos de Usuários**: Grupos de usuários para cada setor, como `GRP_ADM`, `GRP_VEN`, `GRP_TI`.
- **Criação de Usuários**: Criação de usuários com atribuição automática a grupos específicos.
- **Permissões de Diretórios**: Configuração de permissões para garantir que apenas usuários pertencentes ao grupo possam acessar o diretório correspondente.
  
---

## 🚀 Tecnologias Utilizadas

Este projeto foi implementado utilizando as seguintes tecnologias:

- **Bash (Bourne Again Shell)**: Shell script utilizado para automatizar a criação e configuração da infraestrutura no sistema Linux.
- **Linux**: Sistema operacional para o qual o script foi desenvolvido.

---

## 📂 Estrutura de Arquivos

Abaixo está a estrutura do repositório:

```bash
infraestrutura-como-codigo/
│
├── scripts/
│   └── Iac.sh                  # Script principal que realiza a automação.
│
├── README.md                   # Documentação do projeto.
└── LICENSE                     # Arquivo de licença do projeto.
```




## 🔧 Configuração e Instalação

### Pré-requisitos
#### Antes de executar o script, você precisa garantir que seu sistema atende aos seguintes requisitos:

- Sistema Linux com acesso root.
- Git instalado no sistema.
- Permissões de superusuário (sudo) para criar usuários e diretórios.

## Instalação
### Clone o repositório: 
- git clone git@github.com:Raone-souza/infraestrutura-como-codigo.git

### Navegue até o diretório do projeto:
- cd infraestrutura-como-codigo/scripts

## ⚙️ Como usar
Para rodar o script e configurar a infraestrutura no seu servidor, siga os passos abaixo:

### Execute o script como superusuário:

Como o script realiza operações administrativas, como criação de usuários e diretórios, é necessário rodá-lo com permissões elevadas:

- comando: sudo ./Iac.sh


## Resultado esperado:

### Após a execução do script, o seguinte será criado no sistema:

### Diretórios:
- /adm
- /ven
- /ti
- /publica

### Grupos:

- GRP_ADM
- GRP_VEN
- GRP_TI
- Usuários com associação automática aos grupos.

### Permissões Configuradas:

#### Cada diretório terá permissões específicas associadas aos grupos. Por exemplo:

- O diretório /adm será acessível apenas pelo grupo GRP_ADM.
- O diretório /ven será acessível apenas pelo grupo GRP_VEN.
- O diretório /ti será acessível apenas pelo grupo GRP_TI.
- O diretório /publica será acessível a todos os usuários.

## 🔑 Exemplo de Execução


### comando
- $ sudo ./Iac.sh

#### Criando diretórios...
#### Criando grupos de usuários...
#### Criando usuários e associando aos grupos... 
#### Definindo permissões dos diretórios...

#### Configuração concluída com sucesso!


## 👤 Autor
Raone Castro de Souza

- GitHub: https://github.com/Raone-souza
- LinkedIn: https://www.linkedin.com/in/raonesouza/
