  Dado("que eu acesso o sistema") do
    visit 'https://mark7.herokuapp.com'
    sleep 5
  end
  
  Quando("faço login com {string} e {string}") do |email, senha|
    find('#login_email').set email
    find('input[name=password]').set senha
    find('button[id*=btnLogin]').click
  end
  
  Então("vejo a seguinte mensagem {string}") do |mensagem|
    expect(page).to have_content mensagem
  end