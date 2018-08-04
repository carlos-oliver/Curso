# REGEX ou Expressão Regular
# Contem => *
# termina com => $
# começa com => ^

Before do
  @nav = Navbar.new
  @side = Sidebar.new
  @login_page = LoginPage.new
  @tarefas_page = TarefasPage.new
  @perfil_page = PerfilPage.new
  @cadastro_page = CadastroPage.new
end

Before('@login') do
  @usuario = { email: 'nao_usar@mark7.com', senha: '123456' }
  @login_page.acessa
  @login_page.logar(@usuario[:email], @usuario[:senha])
end

After('@logout') do
  @nav.sair
end
