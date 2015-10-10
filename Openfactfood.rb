require "open-uri"
require "json"
loop do
    print "Entrez un numéro de code barre : "
    bar_code = gets.chomp
    break if bar_code ==""
    
    url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"
    
    json=open(url).read
    
    data=JSON.parse(json)
    
    puts data ['product']['product_name']
end