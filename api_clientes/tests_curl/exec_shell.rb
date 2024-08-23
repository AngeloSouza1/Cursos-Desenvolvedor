dados = system('ls -la')

dados.each do |item|
  puts "---[#{item}]---"

end