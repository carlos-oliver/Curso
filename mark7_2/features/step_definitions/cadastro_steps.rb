Dado("que eu estou no formulário de cadastro") do                             
  @cadastro_page.registra
end                                                                           
                                                                              
Dado("possuo os seguintes dados:") do |table|                                 
  @cadastro_page.cadastrar(table.nome)
end                                                                           
                                                                              
Quando("faço o meu cadastro") do                                              
  pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                              
Então("vejo a mensagem {string}") do |string|                                 
  pending # Write code here that turns the phrase above into concrete actions 
end                                                                           