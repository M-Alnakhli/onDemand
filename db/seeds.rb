# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Product.all.destroy_all

 require 'csv'

 csv_text = File.read(Rails.root.join('lib', 'seeds', 'MOCK_DATA.csv'))
 csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
 csv.each do |row|
   t = Product.new(
   name: row['name'],
   amount: row['amount'],
   price: row['price'],
   description: row['description'],
  img: 'https://source.unsplash.com/200x200/?products')
   t.save
   puts "#{t.name}, #{t.price} saved"
 end


