cardapio = {
    :entrada => ["Sopa", "Salada", "Aveia"],
    :principal => ["Arroz", "Frango", "Proteína de soja"],
    :sobremesa => ["Amendoim", "Batata doce", "Banana"]
}

#método para acessar diretamente elemento do array dentro do hash

aux = []
resultado = []

aux = cardapio[:entrada]
resultado.insert(0, aux[rand(0...3)])

aux = cardapio[:principal]
resultado.insert(1, aux[rand(0...3)])

aux = cardapio[:sobremesa]
resultado.insert(2, aux[rand(0...3)])

puts resultado.inspect