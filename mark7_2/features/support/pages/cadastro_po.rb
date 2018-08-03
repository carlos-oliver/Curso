class CadastroPage
    include Capybara::DSL
    def registra
      visit '/register'
    end

    def cadastrar(nome, email, senha)
      find('#register_name').set nome
      find('#register_email').set email
      find('#register_password').set senha
      find('button[id*=btnLogin]').click
    end

end
  