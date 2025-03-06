# Création de catégories
categories = ["Électronique", "Mode", "Maison", "Livres", "Alimentation"]
categories.each do |category_name|
  Category.find_or_create_by!(name: category_name)
end


# Création d'un utilisateur administrateur
User.find_or_create_by!(email: "admin@royalhorizon.com") do |user|
    user.password = "Saimperfile80"
    user.password_confirmation = "Saimperfile80"
  end
  
  
  
# Création de quelques produits
products = [
  { name: "Ordinateur Portable", description: "Un puissant ordinateur pour le travail et le gaming.", price: 1200.99, stock: 10, category: "Informatique" },
  { name: "Smartphone", description: "Dernier modèle avec un appareil photo haute résolution.", price: 899.99, stock: 20, category: "Téléphonie" },
  { name: "Casque Audio", description: "Casque sans fil avec réduction de bruit.", price: 199.99, stock: 30, category: "Accessoires" }
]

products.each do |product|
  Product.find_or_create_by!(name: product[:name]) do |p|
    p.description = product[:description]
    p.price = product[:price]
    p.stock = product[:stock]
    p.category = product[:category]
  end
end
