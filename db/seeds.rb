
user1 = User.new(email: "severine.courbon69@gmail.com",
                  encrypted_password:"123456",
                  first_name: "Séverine",
                  last_name: "Courbon",
                  address:"Lyon",
                  phone_number:"0612131415",
                  photo: "b0dbgw4klwrc0v0js2lq")

user2 = User.new(email:"ahkoon.c@gmail.com",
                  encrypted_password:"123456",
                  first_name: "Chloé",
                  last_name: "Ah-Koon",
                  address:"Lyon",
                  phone_number:"0674749398",
                  photo: "wzjr3o6dyg6yrfqw5s7q")

user3 = User.new(email:"emna.dridi29@gmail.com",
                  encrypted_password:"123456",
                  first_name: "Emna",
                  last_name: "Dridi",
                  address:"Lyon",
                  phone_number:"0678990398",
                  photo: "")

user4 = User.new(email:"albane.villard@gmail.com",
                  encrypted_password:"123456",
                  first_name: "Albane",
                  last_name: "Villard",
                  address:"Lyon",
                  phone_number:"0678977422",
                  photo: "")

plant1 = Plant.new(name: "citronnier",
                    family: "arbre fruitier",
                    description: "bel arbre d'une vingtaine d'année",
                    water: "un peu",
                    sun: "beaucoup",
                    ext_int: "extérieur",
                    size_cm: 180,
                    price_per_day: 12,
                    user: user1,
                    flowers: true,
                    photo: "zpkqujudw9woz3o2kqzu")

plant2 = Plant.new(name: "cactus",
                    family: "plantes grasses",
                    description: "du piquant !",
                    water: "un peu",
                    sun: "à la folie",
                    ext_int: "intérieur",
                    size_cm: 25,
                    price_per_day: 6,
                    user: user1,
                    flowers: false,
                    photo: "u4ytlcmwqwh4r2uuwyju")

plant3 = Plant.new(name: "orchidée",
                    family: "plantes fleuries",
                    description: "une floraison maginifique !",
                    water: "beaucoup",
                    sun: "beaucoup",
                    ext_int: "extérieur",
                    size_cm: 180,
                    price_per_day: 8,
                    user: user2,
                    flowers: true,
                    photo: "rbu6bbpgyorlb8fuueaw")

plant4 = Plant.new(name: "rosier",
                    family: "arbuste",
                    description: "sympathique et romantique",
                    water: "un peu",
                    sun: "un peu",
                    ext_int: "extérieur",
                    size_cm: 80,
                    price_per_day: 11,
                    user: user3,
                    flowers: true,
                    photo: "kzclwafhyczjkcrnnumg")

plant5 = Plant.new(name: "monstera",
                    family: "plantes vertes",
                    description: "une plante monstrueuse !",
                    water: "un peu",
                    sun: "un peu",
                    ext_int: "intérieur",
                    size_cm: 240,
                    price_per_day: 18,
                    user: user4,
                    flowers: false,
                    photo: "y3juzpzckf9c5qyokfn0")

plant6 = Plant.new(name: "ficus benjamina",
                    family: "plantes vertes",
                    description: "plante prometteuse",
                    water: "un peu",
                    sun: "beaucoup",
                    ext_int: "intérieur",
                    size_cm: 180,
                    price_per_day: 3,
                    user: user4,
                    flowers: false,
                    photo: "zpkqujudw9woz3o2kqzu")
