require "http"

index = HTTP.get("http://localhost:3000/products")

show = HTTP.get("http://localhost:3000/products/3")