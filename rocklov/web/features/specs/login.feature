#language: pt


Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar o sistema da Rocklov
    Para que eu possa anunciar meus equipamentos musicais

    #Tentativas de SUCESSO
    @login
    Cenario: Login do usuário

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "yago.izidio@gmail.com" e "1234"
        Então sou redirecionado para o Dashboard

    #Tentativas com varios cenarios incorretos
    Esquema do Cenario: Tentar Logar

        Dado que acesso a página principal
        Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | email_input             | senha_input | mensagem_output                   |
            | yago.izidio96@gmail.com | 1111        | Usuário e/ou senha inválidos.     |
            | yago.izidio91@gmail.com | 1234        | Usuário e/ou senha inválidos.     |
            | yago.izidio91#gmail.com | 1234        | Oops. Informe um email válido!    |
            |                         | 1234        | Oops. Informe um email válido!    |
            | yago.izidio91@gmail.com |             | Oops. Informe sua senha secreta!  |







