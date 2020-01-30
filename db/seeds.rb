# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
    {username: "dawntime", 
    email: "dawncronin7@gmail.com", 
    password: "dawn", 
    password_confirmation: "dawn"})

Resort.create({
    name: "Kirkwood",
    link: "https://www.kirkwood.com/",
    short_desc: "Nestled in a remote part of the Sierra Nevada, Kirkwood offers a pure mountain escape that energizes your heart and liberates your spirit. It is a true sanctuary for freedom seekers and adventure families. Discover the Sierra’s best kept secret.",
    long_desc: "Kirkwood Mountain Resort is a year-round mountain destination located along the Sierra Crest in the Eldorado National Forest south of Lake Tahoe in California. The terrain at Kirkwood offers skiers and riders everything from long groomed trails to expert lines and chutes. The resort receives abundant snowfall each season coupled with spectacular views of the surrounding mountains. The village contains ski-in, ski-out accommodations with adjacent shops and restaurants. The resort also plays host to other activities, including cross country skiing, snowshoeing, dog sled tours and backcountry access.",
    price: 119,
    lat: -38.668139,
    long: 120.0653,
    zipcode: 95646,
    region: "Sierra Nevadas",
    open_date: Date.new(2019, 11, 27),
    close_date: Date.new(2020, 4, 19),
    snowfall: 354,
    vertical: 2000,
    summet: 9800,
    acres: 2300,
    runs: 85,
    green: 12,
    blue: 30,
    black: 38,
    double_black: 20,
    terrain_parks: true,
    epic: true,
    ikon: false,
    begineer: true 
})

Review.create({ user_id: 1, resort_id: 1, rating: 5, text: "I love kirkwood!"

})
