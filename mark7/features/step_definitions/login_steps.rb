  Dado("que eu acesso o sistema") do
    visit 'https://mark7.herokuapp.com'
    sleep 5
  end
  
  Quando("faço login com {string} e {string}") do |email, senha|
    find('#login_email').set email
    find('input[name=passoword]').set senha
    sleep 10
  end
  
  Então("vejo a seguinte mensagem {string}") do |mensagem|
    pending # Write code here that turns the phrase above into concrete actions
  end