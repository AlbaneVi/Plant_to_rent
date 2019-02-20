p "destroying all users and plants"
Plant.destroy_all
User.destroy_all
p "creating 4 users"
user1 = User.new(email:"severine.courbon69@gmail.com",
                  password:"123456",
                  first_name: "Séverine",
                  last_name: "Courbon",
                  address:"Lyon",
                  phone_number:"0612131415",
                  remote_photo_url: "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550584222/b0dbgw4klwrc0v0js2lq.jpg")
user1.save!

user2 = User.create!(email:"ahkoon.c@gmail.com",
                  password:"123456",
                  first_name: "Chloé",
                  last_name: "Ah-Koon",
                  address:"Lyon",
                  phone_number:"0674749398",
                  remote_photo_url: "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550584231/wzjr3o6dyg6yrfqw5s7q.jpg")

user3 = User.create!(email:"emna.dridi29@gmail.com",
                  password:"123456",
                  first_name: "Emna",
                  last_name: "Dridi",
                  address:"Lyon",
                  phone_number:"0678990398")

user4 = User.create!(email:"albane.villard@gmail.com",
                  password:"123456",
                  first_name: "Albane",
                  last_name: "Villard",
                  address:"Lyon",
                  phone_number:"0678977422")

p "creating 7 plants"

plant1 = Plant.new(name: "citronnier",
                    family: "arbre fruitier",
                    description: "bel arbre d'une vingtaine d'année",
                    water: "un peu",
                    sun: "beaucoup",
                    ext_int: "extérieur",
                    size_cm: 180,
                    price_per_day: 12,
                    user: user1,
                    flowers: true)
plant1.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550587456/ggwottalgmpeggwo98lo.jpg"
plant1.save!

plant2 = Plant.new(name: "cactus",
                    family: "plantes grasses",
                    description: "du piquant !",
                    water: "un peu",
                    sun: "à la folie",
                    ext_int: "intérieur",
                    size_cm: 25,
                    price_per_day: 6,
                    user: user1)
plant2.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550583971/u4ytlcmwqwh4r2uuwyju.jpg"
plant2.save!

plant3 = Plant.new(name: "orchidée",
                    family: "plantes fleuries",
                    description: "une floraison maginifique !",
                    water: "beaucoup",
                    sun: "beaucoup",
                    ext_int: "extérieur",
                    size_cm: 180,
                    price_per_day: 8,
                    user: user2,
                    flowers: true)
plant3.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550583741/rbu6bbpgyorlb8fuueaw.jpg"
plant3.save!

plant4 = Plant.new(name: "rosier",
                    family: "arbuste",
                    description: "sympathique et romantique",
                    water: "un peu",
                    sun: "un peu",
                    ext_int: "extérieur",
                    size_cm: 80,
                    price_per_day: 11,
                    user: user3,
                    flowers: true)
plant4.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550581407/kzclwafhyczjkcrnnumg.jpg"
plant4.save!

plant5 = Plant.new(name: "monstera",
                    family: "plantes vertes",
                    description: "une plante monstrueuse !",
                    water: "un peu",
                    sun: "un peu",
                    ext_int: "intérieur",
                    size_cm: 240,
                    price_per_day: 18,
                    user: user4)
plant5.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550583437/y3juzpzckf9c5qyokfn0.jpg"
plant5.save!

plant6 = Plant.new(name: "ficus benjamina",
                    family: "plantes vertes",
                    description: "plante prometteuse",
                    water: "un peu",
                    sun: "beaucoup",
                    ext_int: "intérieur",
                    size_cm: 180,
                    price_per_day: 3,
                    user: user4)
plant6.remote_photo_url = "https://res.cloudinary.com/dvvkrrjc4/image/upload/v1550583453/zpkqujudw9woz3o2kqzu.jpg"
plant6.save!
