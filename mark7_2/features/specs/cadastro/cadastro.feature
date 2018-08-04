#language: pt
Funcionalidade: Cadastro de usuários
    Sendo um visitante
    Posso fazer meu cadastro
    Para poder gerenciar minhas tarefas

    Contexto: Formulário
        Dado que eu estou no formulário de cadastro

    @teste1
    Cenário: Cadastro simples
        
        E possuo os seguintes dados:
            | nome  | Fernando             |
            | email | 1234fernando@qaninja.net |
            | senha | 123456               |
        Quando faço o meu cadastro 
        Então vejo a mensagem "Olá, Fernando"

    @teste2
    Esquema do Cenario: Campos obrigatórios

        E possuo os seguintes dados:
        | nome  | <nome>  |
        | email | <email> |
        | senha | <senha> |
        Quando faço o meu cadastro 
        Então vejo a mensagem de alerta"<saida>"

        Exemplos:
            | nome     | email                | senha  | saida                |
            |          | fernando@qaninja.net | 123456 | Nome é obrigatório.  |
            | Fernando |                      | 123456 | Email é obrigatório. |
            | Fernando | fernando@qaninja.net |        | Informe uma senha.   |