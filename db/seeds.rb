# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Friend.create(first_name: 'Phoebe', last_name: 'Buffay', career: 'Musician', famous_sentence: 'My eyes!',
              image_url: 'https://static.businessinsider.com/image/55df18389dd7cc0f008b64cc/image.jpg')
Friend.create(first_name: 'Janice', last_name: 'Hosenstein', career: 'Comedian', famous_sentence: 'Oh. My. God!',
              image_url: 'http://25.media.tumblr.com/tumblr_mekyn9JpG71rv227po1_400.jpg')