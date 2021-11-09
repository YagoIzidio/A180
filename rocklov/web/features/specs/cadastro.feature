#language: pt


Funcionalidade: Cadastro
    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação


    #Logar com sucesso -> Caminho Feliz
    @cadastro 
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome        | email                   | senha  |
            | Yago Izidio | yago.izidio96@gmail.com | 1234   |  
        Então sou redirecionado para o Dashboard

    #Tentativas com varios cenarios incorretos
    Esquema do Cenario: Tentativa do Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulario de cadastro:
            | nome         | email        | senha        |
            | <nome_input> | <email_input> | <senha_input> |

        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
            | nome_input  | email_input             | senha_input | mensagem_output                  |
            |             |                         |             | Oops. Informe seu nome completo! |
            | Yago Izidio |                         | 1234       | Oops. Informe um email válido!   |
            | Yago Izidio | yago.izidio96#gmail.com | 1234       | Oops. Informe um email válido!   |
            | Yago Izidio | yago.izidio96$gmail.com | 1234       | Oops. Informe um email válido!   |
            | Yago Izidio | yago.izidio96*gmail.com | 1234       | Oops. Informe um email válido!   |
            | Yago Izidio | yago.izidio96!gmail.com | 1234       | Oops. Informe um email válido!   |
            | Yago Izidio | yago.izidio96@gmail.com |            | Oops. Informe sua senha secreta! |





