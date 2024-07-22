# Blog Project

Este projeto foi desenvolvido para criar, gerenciar e visualizar postagens de blog. Utiliza Ruby on Rails e PostgreSQL como banco de dados, proporcionando uma interface amigável tanto para visualização quanto para administração de postagens.

## Funcionalidades Implementadas

🔹 Visualização de Blogs: Página blog/index para visualização de todas as postagens.

🔹 Quando um usuário acessa a página blogindex, ele pode visualizar todas as postagens de blog disponíveis. Administradores podem acessar a seção admin para criar novas postagens, editar ou excluir postagens existentes, e programar postagens para publicação futura.

## Estrutura do Projeto
#### A estrutura principal do projeto é a seguinte:

🔹 app/controllers: Contém os controladores da aplicação.

🔹 app/models: Contém os modelos da aplicação.

🔹 app/views: Contém as views da aplicação.

🔹 views/blogindex: Contém as views relacionadas à visualização de blogs.

🔹 views/admin: Contém as views relacionadas à administração de postagens.

🔹 config: Contém arquivos de configuração, incluindo rotas.

🔹 db: Contém arquivos relacionados ao banco de dados.


## Instalação

Siga os passos abaixo para configurar o projeto em seu ambiente local:

🔹 Clone o repositório:

```bash
git clone https://github.com/seu-usuario/blog
cd blog
```
🔹 Instale as dependências do Ruby:

```bash
bundle install
```
🔹 Configure o banco de dados:
```bash
rails db:create
rails db:migrate
```

🔹 Inicie o Servidor
```bash
rails s
```
🔹 Abra o navegador e acesse http://localhost:3000 para ver a aplicação em execução.


## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para fazer um fork do projeto e enviar suas melhorias através de pull requests.


