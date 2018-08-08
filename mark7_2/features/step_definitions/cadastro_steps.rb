
Dado("que eu estou no formulário de cadastro") do                             
  @cadastro_page.registra
  DAO.new.remover_usuario(@email)
end                                                                           
                                                                              
Dado("possuo os seguintes dados:") do |table|
    @nome = table.rows_hash['nome']
    @email = table.rows_hash['email']
    @senha = table.rows_hash['senha']
end                                                                                                           
                                                                              
Quando("faço o meu cadastro") do                                              
  @cadastro_page.cadastro(@nome, @email, @senha) 
end                                                                           
                                                                              
Então("vejo a mensagem {string}") do |mensagem|                                 
  expect(@cadastro_page.mensagem_b_vindas).to have_content mensagem
end   

Então("vejo a mensagem de alerta{string}") do |mensagem|
  expect(@cadastro_page.mensagem_alerta).to have_content mensagem
end