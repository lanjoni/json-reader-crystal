require "json"

if ARGV.size != 1
    puts "É necessário passar o nome do arquivo como parâmetro!"
    exit 1
end

#content = File.read("content/#{ARGV[0]}")

#hash_content = Hash(String, String).from_json(content)

#puts hash_content

json = File.open("content/#{ARGV[0]}") do |file|
    JSON.parse(file)
end

puts json

# alias jsonValue = String | Int32 | Float64 | Bool

#json = Array(Hash(String, String)).from_json(content)

#puts json
#puts json[0]
#puts json[0]["teste"]