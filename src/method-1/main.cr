require "json"

if ARGV.size != 1
    puts "É necessário passar o nome do arquivo como parâmetro!"
    exit 1
end

content = File.read("content/#{ARGV[0]}")

hash_content = Hash(String, String).from_json(content)

puts hash_content