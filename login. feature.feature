#language: pt

Funcionalidade: Login na Plataforma
Contexto: Como cliente da EBAC SHOP
Quero fazer login na plataforma
Para visualizar meus produtos 

Contexto: 
Dado que eu acesso o portal Ebac SHOP

Cenário: Login e senha válidos

Quando eu digitar corretamente e-mail e senha 
Então deve direcionar para tela de checkout

Cenário: Login e senha inválidos
Quando eu digitar email "joaodasilva@uol.com"
E senha "silvarj"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


Esquema do Cenário: Login com sucesso
Dado que eu esteja na tela de login
Quando eu inserir <e-mail> e < senha>
Entao deve direcionar para os meus pedidos

Exemplos:
| usuário                |    senha       |
| "exercicio.8@ebac.com" | "972395"       |
| "modulo8@gmail.com"    | "887766"       |
|"barcelona.@gmail.com"  | "123barcelona" |
