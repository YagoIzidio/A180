#language: pt

Funcionalidade: Cadastro de Anúncios
    Sendo usuário cadastrado no Rocklov que possui equipamento musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizalos para locação


    Cenario: Novo equipo

        Dado que estou logado como "yago.izidio@gmail.com" e "1234"
        E que acesso o formulario de cadastro de anúncios
        E que eu tenho o seguinte equipamento:
            | img       | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 300           |
        Quando submeto o cadastro desse item
        Então devo ver esse item no meu Dashboard