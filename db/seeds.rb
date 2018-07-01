
3.times do |n|
  product_name = Faker::App.name

  Product.create!(name: product_name)
end

10.times do |n|
  user_name = Faker::Internet.user_name
  password = Faker::Crypto.sha256

  User.create!(user_name: user_name,
  password: password)

end

10.times do |n|
 module_name = Faker::App.name
 product_id = rand(1..3)

 Submodule.create!(name: module_name,
 product_id: product_id)

end

10.times do |n|

 key = Faker::Code.nric
 num_years = rand(1..3)

 License.create!(key: key,
 act_date: DateTime.now,
 exp_date: DateTime.now.next_year(num_years).to_time,
 product_id: num_years,
 user_id: n+1)

end


30.times do |n|
  key = Faker::Code.nric
  num_years = rand(1..3)
  sub_id = rand(1..10)

 Modullicense.create!(key: key,
   act_date: DateTime.now,
   exp_date: DateTime.now.next_year(num_years).to_time,
   submodule_id: sub_id,
   license_id: sub_id)
end
