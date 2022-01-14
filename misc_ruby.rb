require "http"

index = HTTP.get("http://localhost:3000/products")

show = HTTP.get("http://localhost:3000/products/3")

create = HTTP.post("http://localhost:3000/products", :json => {:name => "Spotted Grouper", :price => "100", :description => "This fish likes to stare its prey down"})

update = HTTP.patch("http://localhost:3000/products")

destroy = HTTP.destroy("http://localhost:3000/products/3")
