require "json"

if ARGV.size != 1
    puts "É necessário passar o nome do arquivo como parâmetro!"
    exit 1
end

json = File.open("content/#{ARGV[0]}") do |file|
    JSON.parse(file)
end

puts json