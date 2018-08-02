#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Home
        Dado que eu acesso o sistema

    @sprint1 @logout
    Cenario: Usuário autenticado
        
        Quando faço login com "eu@papito.io" e "123456"
        Então vejo a mensagem de boas vindas "Olá, Fernando"
    

    @tentativa
    Esquema do Cenario: Tentativa de login

        Quando faço login com "<email>" e "<senha>"
        Então vejo a mensagem de alerta "<saida>"

    Exemplos:
      | email                   | senha  | saida                       |
      | eu@papito.io            | 999999 | Senha inválida.             |
      | usuarioerrado@papito.io | 123456 | Usuário não cadastrado.     |
      |                         | 123456 | Email incorreto ou ausente. |
      | eu@papito.io            |        | Senha ausente.              |
      | eu#papito.io            | aed323 | Email incorreto ou ausente. |