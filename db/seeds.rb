Seller.delete_all
Seller.create(name:"Maria")
Seller.create(name:"Gustavo")
Seller.create(name:"Ana")

Customer.delete_all
Customer.create(name:"Junior", cpf:"1111", preferential:true, 
								email:"junior@junior.com", identity:"123123")
Customer.create(cpf:"2222")
Customer.create(cpf:"3333")

Catalogue.delete_all
Catalogue.create(catalogue_type:"Livros")
Catalogue.create(catalogue_type:"Filmes")

Supplier.delete_all
Supplier.create(name:"Fornecedor 1")
Supplier.create(name:"Fornecedor 2")

Stock.delete_all
stock1 = Stock.create(name:"Estoque 1")
stock2 = Stock.create(name:"Estoque 2")

Product.delete_all
product1 = Product.create(supplier:Supplier.first, catalogue:Catalogue.first,
							 name:"1984", price:"19.90")
product2 = Product.create(supplier:Supplier.last, catalogue:Catalogue.first,
							 name:"Steve Jobs", price:"39.90")
product3 = Product.create(supplier:Supplier.last, catalogue:Catalogue.last,
							 name:"Matrix", price:"9.90")
product4 = Product.create(supplier:Supplier.last, catalogue:Catalogue.last,
							 name:"Clube da Luta", price:"12.90")
product5 = Product.create(supplier:Supplier.first, catalogue:Catalogue.last,
							 name:"Argo", price:"49.90")

ProductStock.delete_all
ProductStock.create(amount:3, product:product1, stock:stock1)
ProductStock.create(amount:5, product:product2, stock:stock1)
ProductStock.create(amount:2, product:product3, stock:stock2)
ProductStock.create(amount:1, product:product4, stock:stock1)
ProductStock.create(amount:0, product:product5, stock:stock2)
