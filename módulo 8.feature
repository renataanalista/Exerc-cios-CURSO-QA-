            módulo 8.feature

            #language: pt

            Funcionalidade: Cliente da Ebac-shop
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu selecione obrigatoriamente a cor, tamanho e quantidade
            Cenário: produto configurado

            Quando eu selecionar a cor, tamanho
            E quantidade
            Então deve aparecer produtos no carrinho

            Cenário: Colocar trava em 10 produtos
            Quando eu selecionar até 10 produtos
            Então deve permitir a compra

            Cenário: limpeza de produtos
            Quando eu clicar no botão limpar
            Então deve voltar ao estado original


            Funcionalidade: Tela de login
            Como cliente Ebac-shop
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Cenário: fazer checkout
            Quando eu inserir dados válidos
            Então deve ser direcionado para a tela de checkout

            Cenário: usuário ou senha inválidos
            Quando eu inserir um dos campos inválidos
            Deve inserir uma mensagem de alerta "Usuário ou senha inválidos"

            Funcionalidade: tela de cadastro
            Como cliente Ebac-shop
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: concluir cadastro
            Quando eu cadastrar todos os dados obrigatórios, marcado com asteriscos
            Então deve direcionar para minha conta

            Cenário: mensagem de erro
            Quando eu inserir campo de email com formato inválido
            Então o sistema deve inserir um alerta" mensagem de erro"

            |email          | senha     | mensagem |
            555@k.com.br    | 5525      | "mensagem de erro"
            tiao@gmail.com  | tiao22    | "olá Tião!"
            tadeu@52.co     | tadeu08   | "mensagem de erro"

Cenário: mensagem de alerta
Quando eu tentar cadastrar com campos vazios
Então deve exibir "Erro: Informe um endereço de e-mail válido."






