puts "Escolha uma opção de fruta"
puts "Banana"
puts "Laranja"
puts "Maçã"

opcao = gets.chomp

case opcao

when "Banana", "banana"
  puts "A fruta escolhida foi Banana: R$ 2.00"

when "Laranja", "laranja"
    puts "A fruta escolhida foi Laranja: R$ 2.30"

when "Maça", "maça", "Maçã", "maçã"
    puts "A fruta escolhida foi Maçã: R$ 3.00"

else
    puts "Opção inválida."
end