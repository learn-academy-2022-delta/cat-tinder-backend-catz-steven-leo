# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cats = [
    {
        name: "Lucifer",
        age: 7,
        status: "Single" , 
        looking_for: "Dating" , 
        about_me: "I have been hurt many times, but I know there's love out there for me.", 
        hobbies: "Skydiving, Flying my Western Company Seabreeze plane, Foodie, Live-action role playing", 
        image: "https://www.ripleys.com/wp-content/uploads/2020/02/shutterstock_1348113467-1024x683.jpg"
    }, 
    {
        name: "Violet",
        age: 3 ,
        status: "Single" , 
        looking_for: "Relationship" , 
        about_me: "I enjoy painting portraits in my spare time and dancing in the wind.", 
        hobbies: "Capoeira, Cosplay, Archecry, Collecting leafs and crystals", 
        image: "https://1.bp.blogspot.com/-YhuR-_pa13Q/XzU-dQfpkHI/AAAAAAAA4Ew/W1ZlvWUP_i0DeGSVI8mbFVdtGpGla5UqgCLcBGAsYHQ/s2560/serval_wild_cat_spots_182077_3840x2160.jpg"
    }, 
    {
        name: "Arlo" ,
        age: 5,
        status: "Widow" , 
        looking_for: "Friend", 
        about_me: "In a party setting you can find me in the corner rereading old text messages and thinking about what I should have said, but occassionally I might look up to say Hello.", 
        hobbies: "Sand Art, Hiking at night, Spoken poetry, Tattoos",
        image: "https://images8.alphacoders.com/427/thumb-1920-427639.jpg"
    }, 
    {
        name: "Aleksis",
        age: 10,
        status: "Married", 
        looking_for: "Companionship", 
        about_me: "If life were a box of chocolates, lets just say I've been through the whole box. At this point, I'm looking for adventure and new sparks.", 
        hobbies: "Art of garnishing, Performing at the local community theatre, Calligraphy, Flying drones", 
        image: "https://images.hdqwalls.com/download/cheetah-close-up-ml-1920x1080.jpg"
    }
]

cats.each do |each_cat|
    Cat.create each_cat
    puts "Create A Cat #{each_cat}"
end

cats.each do |attributes|
    Cat.create(attributes)
    p "Create A Cat #{attributes}"
end 