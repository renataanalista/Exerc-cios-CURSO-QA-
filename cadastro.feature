#language: pt

Funcionalidade: Tela de cadastro - checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
 Dado que eu acesso o portal EBAC SHOP

 Cenario: Cadastro com dados obrigatórios
 Quando eu preencher todos os dados obrigatorios
 E com asteriscos
 Então deve direcionar para finalizar a compra

 Cenario: Validar formatação do campo "email"
 Quando eu preencher todos os campos obrigatorios
 E com asteriscos
 E digitar 'email' com formatação invalida
 Entao deve exibir um alerta: "ERRO"


 Cenario: Validar campos preenchidos
 Dado que eu acesse a página EBAC-SHOP
 Quando eu esquecer de preencher algum campo
 E com asteriscos
 Entao deve exibir uma <mensagem> de alerta: "Preencher todos os campos com *"
-----------------------------------------------------------------------
Esquema do Cenario: Validar campo de e-amail
Quando eu preencher todos os campos obrigatorios
E com asteriscos
E digitar <email> com formatação invalida
Entao deve exibir uma <mensagem> de alerta: "ERRO"

 Exemplos:

 | email                 | mensagem   |
 | "meulogin@123.com"    | "ERRO"     |
 | "logindavida@3.com"   | "ERRO"     |

 --------------------------------------------------------------------------------------

Esquema do Cenario: Validar campos preenchidos
Quando eu esquecer de preencher algum campo
e com <asterisco>
Então deve exibir uma <mensagem> de alerta: "Preencher todos os campos com *"

Exemplos:

| asterisco |  mensagem                  |
|           |"Preencher todos os campos" |
