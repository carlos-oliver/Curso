#language:pt

Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados.

    Contexto: Home
        Dado que eu acesso o sistema

    @sprint1
    Cenario: Usuário autenticado
        
        Quando faço login com "eu@papito.io" e "123456"
        Então vejo a seguinte mensagem "Olá, Fernando"
    
    @sprint1
    Cenario: Senha incorreta

        Quando faço login com "eu@papito.io" e "99999"
        Então vejo a seguinte mensagem "Senha invalida."

    @sprint1
    Cenario: Usuário não cadastrado

        Quando faço login com "usuarioerrado@papito.io" e "123456"
        Então vejo a seguinte mensagem "Usuário não cadastrado."

    @sprint2
    Cenario: Email deve obirgatório

        Quando faço login sem informar e email 
        Então vejo a mensagem "Email deve ser preenchido."