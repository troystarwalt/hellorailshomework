# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "blahblah", email: "blah@blah.com", password: "slayer")
User.create(username: "rahrah", email: "rah@rah.com", password: "slayer")
User.create(username: "negative", email: "negative@blah.com", password: "slayer")
User.create(username: "dolphin", email: "dolph@blah.com", password: "slayer")
User.create(username: "ghost", email: "ghost@blah.com", password: "slayer")
User.create(username: "leaving", email: "leaving@blah.com", password: "slayer")

Post.create(content: "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.", title: "Post 1", user_id: 1)
Post.create(content: "Normally, both your asses would be dead as fucking fried chicken, but you happen to pull this shit while I'm in a transitional period so I don't wanna kill you, I wanna help you. But I can't give you this case, it don't belong to me. Besides, I've already been through too much shit this morning over this case to hand it over to your dumb ass.", title: "Post 2", user_id: 4)
Post.create(content: "Now that there is the Tec-9, a crappy spray gun from South Miami. This gun is advertised as the most popular gun in American crime. Do you believe that shit? It actually says that in the little book that comes with it: the most popular gun in American crime. Like they're actually proud of that shit. ", title: "Post 3", user_id: 3)
Post.create(content: "Now that we know who you are, I know who I am. I'm not a mistake! It all makes sense! In a comic, you know how you can tell who the arch-villain's going to be? He's the exact opposite of the hero. And most times they're friends, like you and me! I should've known way back when... You know why, David? Because of the kids. They called me Mr Glass.", title: "Post 4", user_id: 2)