# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Resort.create({
#     name: "Kirkwood",
#     link: "https://www.kirkwood.com/",
#     short_desc: "Nestled in a remote part of the Sierra Nevada, Kirkwood offers a pure mountain escape that energizes your heart and liberates your spirit. It is a true sanctuary for freedom seekers and adventure families. Discover the Sierra’s best kept secret.",
#     long_desc: "Kirkwood Mountain Resort is a year-round mountain destination located along the Sierra Crest in the Eldorado National Forest south of Lake Tahoe in California. The terrain at Kirkwood offers skiers and riders everything from long groomed trails to expert lines and chutes. The resort receives abundant snowfall each season coupled with spectacular views of the surrounding mountains. The village contains ski-in, ski-out accommodations with adjacent shops and restaurants. The resort also plays host to other activities, including cross country skiing, snowshoeing, dog sled tours and backcountry access.",
#     price: 119,
#     lat: -38.668139,
#     long: 120.0653,
#     zipcode: 95646,
#     region: "Sierra Nevadas",
#     open_date: Date.new(2019, 11, 27),
#     close_date: Date.new(2020, 4, 19),
#     snowfall: 354,
#     vertical: 2000,
#     summet: 9800,
#     acres: 2300,
#     runs: 85,
#     green: 12,
#     blue: 30,
#     black: 38,
#     double_black: 20,
#     terrain_parks: true,
#     epic: true,
#     ikon: false,
#     beginner: true 
# })

# Review.create({ user_id: 1, resort_id: 1, rating: 5, text: "I love kirkwood!"

# })

require 'date'

resorts = []

count = 0

File.open("#{Rails.root}/Resorts.csv").each_line do |line|
    if count != 0 
        resort = line.split(/\t/)
        if resort[23] == "TRUE"
            epic = true
        else 
            epic = false
        end
        if resort[24] == "TRUE"
            ikon = true
        else 
            ikon = false
        end
        if resort[25] == "TRUE\r\n" || resort[25] == "TRUE"
            beginner = true
        else 
            beginner = false
        end

        open_date = Date.strptime(resort[10],"%m/%d/%Y")
        close_date =  Date.strptime(resort[11],"%m/%d/%Y")
         
        hashed_resort = {
            name: resort[0],
            link: resort[1],
            short_desc: resort[2],
            long_desc: resort[3],
            price: resort[4].to_i,
            lat: resort[5].to_f,
            long: resort[6].to_f,
            zipcode: resort[7].to_i,
            region: resort[8],
            state: resort[9],
            open_date: open_date,
            close_date: close_date,
            snowfall: resort[12].to_i,
            vertical: resort[13].to_i,
            summit: resort[14].to_i,
            acres: resort[15].to_i,
            runs: resort[16].to_i,
            lifts: resort[17].to_i,
            green: resort[18].to_i,
            blue: resort[19].to_i,
            black: resort[20].to_i,
            double_black: resort[21].to_i,
            terrain_parks: resort[22].to_i,
            epic: epic,
            ikon: ikon,
            beginner: beginner
        }

        r =  Resort.create(hashed_resort)
        Photo.create({photo_url: resort[26], resort_id: r.id})
    end

    count += 1
end

resorts.each do |resort|
   
    
end


# Photo.create(photo_url: resort[26], resort_id:)
