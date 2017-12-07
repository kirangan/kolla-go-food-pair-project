# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!([
  {name: "Traditonal"},
  {name: "Fast Food"},
  {name: "Soft Drik"}
])
Food.create!([
  {name: "Meat Steak", description: "<p>\r\n    daging terbaik dari sapi alami\r\n    </p>", image_url: "tenderloin.jpg", price: "99000.0", category_id: 2, restaurant_id: 2},
  {name: "Ayam Geprek", description: "<p>\r\n    ayam yang goreng yang digeprek \r\n    </p>", image_url: "ayam_geprek.jpg", price: "15000.0", category_id: 1, restaurant_id: 1},
  {name: "Tutug Oncom", description: "<p>\r\n    nasi diulek oncom dilengkapi sambal terasi dan timun \r\n    </p>", image_url: "tutug_oncom.jpg", price: "17000.0", category_id: 1, restaurant_id: 1},
  {name: "Bakmi Special", description: "<p>Bakmi Golek</p>", image_url: "bakmi_golek.jpg", price: "25000.0", category_id: 1, restaurant_id: 4},
  {name: "Keripik Maicih", description: "<p> keripik maicih </p>", image_url: "maicih.png", price: "16000.0", category_id: 2, restaurant_id: 6},
  {name: "Sukiyaki", description: "<p> Ramen from konoha </p>", image_url: "sukiyaki.jpg", price: "59000.0", category_id: 2, restaurant_id: 5},
  {name: "Udon", description: "<p>Ramen From Konoha</p>", image_url: "udon.jpg", price: "45000.0", category_id: 2, restaurant_id: 5},
  {name: "Ayam Geprek Komplit ", description: "<p> ayam geprek plus tahu tempe</p>", image_url: "ayam_geprek.jpg", price: "19000.0", category_id: 1, restaurant_id: 1}
])

Buyer.create!([
  {email: "arishermawan@hotmail.com", name: "aris hermawan", phone: "082310232303", address: "jln azalea raya no 3 lippo cikarang"},
  {email: "i@arishermawan.id", name: "aris hermawan", phone: "082310232303", address: "jln azalea raya no 2 lippo cikarang"},
  {email: "rizhima@gmail.com", name: "aris hermawan", phone: "082310232303", address: "jln azalea raya no 1 lippo cikarang"}
])

Restaurant.create!([
  {name: "Bumbu Desa", address: "Sabang, Jakarta"},
  {name: "Bang Bang Steak", address: "Jl. Kebon Sirih No 7"},
  {name: "Bakmi Golek", address: "Sarinah Mall Lt 6"},
  {name: "Yashinoya", address: "Blok M Square Lt 6"},
  {name: "Wonder Juice Bar", address: "Paris van Java Bandung"}
])
Review.create!([
  {name: "aris", title: "Coba Coba bray", description: "jdfladf asklfjalkdf lksjflakjdflas flkasjdflj", reviewable_type: "Restaurant", reviewable_id: 1},
  {name: "Aris Hermawan", title: "Fantastic!!!", description: "Restoran dengan menu klasik yang mantaps", reviewable_type: "Restaurant", reviewable_id: 1},
  {name: "Aris Hermawan", title: "Mantap ", description: "Pedasnya mantaps", reviewable_type: "Food", reviewable_id: 2},
  {name: "Aris Hermawan", title: "Daging Empuk", description: "Dagingnya Empuk Bangetssssss", reviewable_type: "Food", reviewable_id: 1},
  {name: "Crystal Widjadja", title: "Unbreakable Taste!!", description: "Just 1 word 1 have to say to this Restaurant, Amazinggg!!!!!", reviewable_type: "Restaurant", reviewable_id: 1},
  {name: "Aris Hermawan", title: "dkjfald", description: "lkdsafjdlfjasldfjlsajflkdsjf", reviewable_type: "Restaurant", reviewable_id: 1},
  {name: "kljflads", title: "djflkasld", description: "dafldjfadslf", reviewable_type: "Food", reviewable_id: 1},
  {name: "Aris Hermawan", title: "Mantap", description: "ok oko oko oko", reviewable_type: "Restaurant", reviewable_id: 1},
  {name: "ok", title: "ok", description: "ok", reviewable_type: "Restaurant", reviewable_id: 1}
])
Tag.create!([
  {name: "street food"},
  {name: "sweet spicy"},
  {name: "junkfood"},
  {name: "hotfood"},
  {name: "extremefood"},
  {name: "5 star"},
  {name: "indonesian original"}
])

User.create!(username: "qurinainun", password: "qurinainun")

Voucher.create!([
  {code: "15PERSEN", valid_from: "2017-11-05", valid_through: "2018-11-15", amount: "15.0", unit_type: "% (Persentage)", max_amount: "30000.0"}
  
])


Role.create!(
  name: "administrator"
)

Role.create!(
  name: "customer"
)
