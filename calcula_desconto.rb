# puts "Seja bem vindo ao programar de calcular descontos!"
# puts "Qual e o seu nome ?"
# nome = gets.chomp

# puts "Olá #{nome}, vamos começar ?"
# puts "Digite aqui o valor total do pedido: "
# valor_total = gets.chomp.to_f
# puts "Digite a porcentagem de desconto: "
# porcentagem_desconto = gets.chomp.to_f

# valor_desconto = valor_total * porcentagem_desconto / 100
# valor_total_desconto = valor_total - valor_desconto

# valor_total_formatado = sprintf("%.2f", valor_total)
# valor_total_desconto_formatado = sprintf("%.2f", valor_total_desconto)
# porcentagem_desconto_formatado = sprintf("%.0f", porcentagem_desconto)

# puts "Senhor #{nome}, o valor total do pedido sem desconto é: #{valor_total_formatado} R$"
# puts "Agora o valor total do seu pedido com desconto de #{porcentagem_desconto_formatado}% e #{valor_total_desconto_formatado} R$"

def boas_vindas
puts "Seja bem vindo ao programar de calcular descontos!"
puts "Qual e o seu nome ?"
nome_usuario = gets.chomp
 return nome_usuario
end

nome_usuario = boas_vindas #aqui chama a função e armazena o retorno numa variavel

puts "Olá, #{nome_usuario}! Bem - vindo ao programa de calcular descontos."


def receber_valores (nome_usuario)
puts "Olá #{nome_usuario}, vamos começar ?"
puts "Digite aqui o valor total do pedido: "
valor_total = gets.chomp.to_f
puts "Digite a porcentagem de desconto: "
porcentagem_desconto = gets.chomp.to_f
  return valor_total, porcentagem_desconto
end

valor_total, porcentagem_desconto = receber_valores(nome_usuario) #sempre que chamar uma função com parametro, tem que colocar o parametro aqui tbm

def calcular_desconto(valor_total, porcentagem_desconto)
valor_desconto = valor_total * porcentagem_desconto / 100
valor_total_desconto = valor_total - valor_desconto
  return valor_desconto, valor_total_desconto
end

valor_desconto, valor_total_desconto = calcular_desconto(valor_total, porcentagem_desconto)

def formatar_decimais(valor_total, valor_total_desconto, porcentagem_desconto)
  valor_total_formatado = sprintf("%.2f", valor_total)
  valor_total_desconto_formatado = sprintf("%.2f", valor_total_desconto)
  porcentagem_desconto_formatado = sprintf("%.0f", porcentagem_desconto)  
   return valor_total_formatado, valor_total_desconto_formatado, porcentagem_desconto_formatado
end

valor_total_formatado, valor_total_desconto_formatado, porcentagem_desconto_formatado = formatar_decimais(valor_total, valor_total_desconto, porcentagem_desconto)

puts "Senhor #{nome_usuario}, o valor total do pedido sem desconto é: #{valor_total_formatado} R$"
puts "Agora o valor total do seu pedido com desconto de #{porcentagem_desconto_formatado}% e #{valor_total_desconto_formatado} R$"