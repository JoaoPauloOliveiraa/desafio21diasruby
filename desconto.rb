
usuario = 'joao'
senha = '1234'

puts "\n\n"
puts "+--------------------+"
puts "|      ENTRAR        |"
puts "+--------------------+"

puts "\nUsuário: "
usuario_login = gets 

puts "\nSenha: "
senha_login = gets

system 'clear'

puts "\n\nCarregando..."
sleep 1

system 'clear'

if usuario_login.to_s.strip == usuario && senha_login.to_s.strip == senha
    puts "\n\n"
    puts "+--------------------+"
    puts "|  BEM VINDO - JOAO  |"
    puts "+--------------------+"

    puts "Produto: "
    nome_produto = gets.chomp.to_s 
    
    puts "Valor:"
    valor_produto = gets.chomp.to_f

    system "clear"

    if valor_produto < 10
        puts "\n\n+--------------------------------------------------------------+"
        puts "|                Valor total da compra: R$ #{sprintf('%.02f', valor_produto)}                |"
        puts "+--------------------------------------------------------------+"
        puts "\n\nDeseja adicionar um novo item ou produto ao pedido para receber um desconto? \n\n"
        puts "Digite S para sim ou N para não: "
        resposta = gets.chomp.to_s
        system "clear"
        if resposta.to_s.upcase.strip == "S"
            puts "Produto: "
            nome_produto_adicional = gets.chomp.to_s
            puts "Valor: "
            valor_produto_adicional = gets.chomp.to_f
            system "clear"
            puts "Porcentagem de desconto: "
            porcentagem_desconto = gets.chomp.to_f
            
            system "clear"
            
            sleep 0.5
            
            puts "Calculando aguarde..."
            
            sleep 1
            
            system "clear"
            
            puts "Carregando..."
            
            sleep 1
            
            system "clear"
            valor_total_pedido = valor_produto + valor_produto_adicional
            desconto = valor_total_pedido * (porcentagem_desconto/100)
            total_com_desconto = valor_total_pedido - desconto
        
            puts "+------------------------------------------------------------------+"
            puts "|                     DESCONTO APLICADO                            |"
            puts "+------------------------------------------------------------------+"
            puts "|                         Produtos                                 |"
            puts "+------------------------------------------------------------------+"
            puts "                        #{nome_produto}: R$ #{sprintf('%.02f',valor_produto)}"
            puts "+------------------------------------------------------------------+"
            puts "                        #{nome_produto_adicional}: R$ #{sprintf('%.02f', valor_produto_adicional)}"
            puts "+------------------------------------------------------------------+"
            puts "\n\n+------------------------------------------------------------------+"
            puts "                 Valor total: R$ #{sprintf('%.02f', valor_total_pedido)}"
            puts "+------------------------------------------------------------------+"
            puts "                 Valor do desconto: R$ #{sprintf('%.02f', desconto)}"
            puts "+------------------------------------------------------------------+"
            puts "                 Porcentagem de desconto: #{sprintf('%.02f', porcentagem_desconto)}%"
            puts "+------------------------------------------------------------------+"
            puts "                 Valor total com desconto: R$ #{sprintf('%.02f', total_com_desconto)}"
            puts "+------------------------------------------------------------------+\n\n"
                
    elsif resposta.to_s.upcase.strip == "N"
                system "clear"
                puts "+----------------------------------------+"
                puts "| OBRIGADO PELA PREFERÊNCIA, VOLTE SEMPRE|"
                puts "+----------------------------------------+"
                puts "      Valor total da compra: R$ #{sprintf('%.02f', valor_produto)}"
                puts "+----------------------------------------+"
            else 
                system "clear"
                puts "+------------------------------------+"
                puts "| RESPOSTA INVÁLIDA, TENTE NOVEMANTE |"
                puts "+------------------------------------+"

        end


        else
            system "clear"
            puts "+----------------------------------------+"
            puts "| OBRIGADO PELA PREFERÊNCIA, VOLTE SEMPRE|"
            puts "+----------------------------------------+"
            puts "     Valor total da compra: R$ #{sprintf('%.02f', valor_produto)}"
            puts "+----------------------------------------+" 
        end
else
    system "clear"
            puts "\n+----------------------------------------+"
            puts "|     Usuário e/ou senha incorretos!     |"
            puts "+----------------------------------------+"
end

