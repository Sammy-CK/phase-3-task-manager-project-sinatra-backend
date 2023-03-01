puts "🌱 Seeding users..."


5.times do 

    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )

end


puts "✅ Done seeding!"