#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesso o portal Ebac SHOP

Cenário: Seleção de cor, tamanho e quantidade devem ser obrigatórios
Quando eu escolher o produto
E selecionar a cor, tamanho e quantidade
Então se todas as informações foram selecionadas, o produto vai para o carrinho

Cenário: Permitir no máximo 10 produtos por venda
Quando eu escolher o produto
E selecionar a cor, tamanho e quantidade
Então enviar para o carrinho se tiver no máximo 10 produtos 

Cenario: Voltar ao estágio inicial
Quando eu clicar no botão "limpar"
Então deve voltar ao estado original

Esquema do Cenário: Escolher multiplos produtos

Quando eu escolher um produto
E selecionar a <cor>
E o <tamanho>
E a <quantidade>
Então se a quantidade for menor ou igual a dez, inserir os produtos no carrinho

Exemplos:
|   cor    |     tamanho   |     quantidade   |
| "rosa"   |    "PP"       |        8         |
| "verde"  |    "M"        |        1         |
| "preto"  |    "P"        |        2         |
| "azul"   |    "M "       |        3         |
| "verde"  |    "G"        |        2         |
| "branco" |    "XG"       |        1         |