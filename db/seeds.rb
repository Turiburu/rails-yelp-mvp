require 'faker'

puts 'Cleaning the database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

100.times do
  Restaurant.create!(
    name:         Faker::Restaurant.name,
    address:      Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:     ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
    # content:   Faker::Restaurant.review,
    # rating:   rand(0..5)
  )
  puts "Created #{Restaurant.name}"
end

puts "Finished!"
