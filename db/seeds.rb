Coffee.destroy_all

1000.times do |i|
  Coffee.create!(
    blend: Faker::Coffee.blend_name,
    price: rand(1990..5490),
    origin: Faker::Coffee.origin,
    amount: rand(1..100),
    created_at: Faker::Date.between(from: '2017-01-01', to: Date.today)
)
end