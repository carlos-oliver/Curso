class CadastroPage
    include Capybara::DSL
    def registra
      visit '/register'
    end

    def cadastro(nome, email, senha)
      find('#register_name').set nome
      find('#register_email').set email
      find('#register_password').set senha
      click_button 'Cadastrar'
    end

    def mensagem_b_vindas
      find('.col-md-6')
    end

end
  