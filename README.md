# dj_saas

Este projeto modelo para SaaS utiliza Django para fornecer uma estrutura robusta e escalável para desenvolvimento de aplicativos SaaS. Inclui autenticação de usuários, gerenciamento de assinaturas, e integração com serviços essenciais, oferecendo um ponto de partida eficiente para novos produtos baseados em SaaS.

## 🚀 Começando

Essas instruções permitirão que você obtenha uma cópia do projeto em operação na sua máquina local para fins de desenvolvimento e teste.

Consulte **[Implantação](#-implanta%C3%A7%C3%A3o)** para saber como implantar o projeto.

### 📋 Pré-requisitos

De que coisas você precisa para instalar o software e como instalá-lo?

```
docker
python==3.12^
```

### 🔧 Instalação
Uma série de exemplos passo-a-passo que informam o que você deve executar para ter um ambiente de desenvolvimento em execução.

1. Clonar o repositório
Primeiro, clone o repositório da aplicação:

```
git clone https://github.com/Gustavo-Alberico/dj_saas.git
cd dj_saas
```

2. Configurar variáveis de ambiente

Crie um arquivo .env na raiz do projeto para configurar as variáveis de ambiente necessárias, se ainda não existir. Use o arquivo .env.example como base:

```
cp .env.example .env
```

3. Construir e subir os contêineres
Utilize o Docker Compose para construir e iniciar os serviços da aplicação:

```
docker compose up -d
```

4. Aplicar as migrações do banco de dados
Depois que os contêineres estiverem em execução, abra outro terminal e execute as migrações do Django para configurar o banco de dados:

```
docker compose exec web python manage.py migrate
```

5. Criar um superusuário
Crie um superusuário para acessar o painel administrativo do Django:

```
docker compose exec web python manage.py createsuperuser
```

6. Acessar a aplicação
Com o ambiente em execução, você pode acessar a aplicação na seguinte URL:

```
http://localhost:8000
```
7. Exemplo de uso
Após completar os passos de instalação, acesse a aplicação e faça login no painel administrativo em:

```
http://localhost:8000/admin
```

Uma vez logado, você pode adicionar dados, como usuários e objetos do seu modelo Django. Para um teste rápido, crie um novo objeto no seu modelo principal e veja os dados aparecerem na página inicial da aplicação.



## ⚙️ Executando os testes
Executar testes (Opcional)
Para garantir que o sistema esteja funcionando corretamente, você pode executar os testes automatizados:

```
docker compose exec web python manage.py test
```

## 🛠️ Construído com

Mencione as ferramentas que você usou para criar seu projeto

* [Django](http://www.dropwizard.io/1.0.2/docs/) - Framework web Python completo
* [ALpine.Js](https://alpinejs.dev/) - JavaScript leve e reativo
* [htmx](https://htmx.org/) - HTML dinâmico com AJAX
* [Bulma](https://bulma.io/) - Framework CSS moderno e responsivo


## ✒️ Autores

Mencione todos aqueles que ajudaram a levantar o projeto desde o seu início

* **Gustado Alberico** - *Criador* - [perfil](https://github.com/Gustavo-Alberico)


## 📄 Licença

Este projeto está sob a licença (sua licença) - veja o arquivo [LICENSE.md](https://github.com/usuario/projeto/licenca) para detalhes.

## 🎁 Agradecimentos

* Conte a outras pessoas sobre este projeto 📢;
* Convide alguém da equipe para uma cerveja 🍺;
