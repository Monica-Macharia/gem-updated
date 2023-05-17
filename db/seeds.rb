
#create new data everytime seed command is run
Destination.destroy_all
Creator.destroy_all

#Destination data
Destination.create!(name: "Sikita Mountains, Asia", image: "https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", video: "https://player.vimeo.com/external/325031972.sd.mp4?s=756ab9b01523cd78643de249ce19d4c7fb8d9dba&profile_id=164&oauth2_token_id=57447761", description: "Serene mountain tops.")
Destination.create!(name: "Karanu Lake, Africa", image: "https://images.pexels.com/photos/8429987/pexels-photo-8429987.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", video: "https://player.vimeo.com/external/382982174.sd.mp4?s=8cdec2c9a5a6f8ca2325885e376aa40c840d0e6c&profile_id=164&oauth2_token_id=57447761", description: "Long beaches")
Destination.create!(name: "River Zambo, Africa", image: "https://images.pexels.com/photos/709552/pexels-photo-709552.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", video: "https://cdn.pixabay.com/vimeo/457717326/Waterfall%20-%2048898.mp4?width=1280&hash=6ccec6030ca9848b468888bc0f01e6c5f99a5a37", description: "Great hiking trails")
Destination.create!(name: "Zambezi rocks, Africa", image: "https://images.pexels.com/photos/1544376/pexels-photo-1544376.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/264715987/Rock%20-%2015527.mp4?width=1280&hash=058fe3af6ceeda7fbd35bc2bfd62746b10109f73", description: "Great boat rides")
Destination.create!(name: "Suko Waterfalls, Asia", image: "https://images.pexels.com/photos/3086736/pexels-photo-3086736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", video: "https://cdn.pixabay.com/vimeo/212566447/Niagara%20Falls%20-%208603.mp4?width=640&hash=c4b960c47814ee6316386ab2773f2f0bea8fa5af", description: "Relaxing sounds.")
Destination.create!(name: "Fol, Americas", image: "https://images.pexels.com/photos/11183936/pexels-photo-11183936.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/136121362/Grand%20Canyon%20-%20380.mp4?width=480&hash=e53411240d534e1a379305c7ed5fc1485c1b19f2", description: "Great hiking trails")
Destination.create!(name: "Soke, Islands", image: "https://images.pexels.com/photos/2724664/pexels-photo-2724664.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/441301097/Clouds%20-%2045150.mp4?width=636&hash=a724e28adf9718da1b1b26e042ebf046bb35f15b", description: "Great for parachutes")
Destination.create!(name: "Datar, Islands", image: "https://images.pexels.com/photos/53389/iceberg-antarctica-polar-blue-53389.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/451829968/Glacier%20-%2047614.mp4?width=960&hash=d05578ca3eb7a29a528579a5fb562669cebcb4cc", description: "Extremely cold.")
Destination.create!(name: "Dote Crater, Islands", image: "https://images.pexels.com/photos/1460171/pexels-photo-1460171.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://player.vimeo.com/external/426615707.sd.mp4?s=98fb6ea9590cbb1d856640418fcc871241923d2b&profile_id=164&oauth2_token_id=57447761", description: "Weather is great")
Destination.create!(name: "Gadi Desert, Africa", image: "https://images.pexels.com/photos/2471261/pexels-photo-2471261.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/638016606/Desert%20-%2092837.mp4?width=1280&hash=af657b3903b3b77ea31069d97c47b99c593126ee", description: "Relaxing Rides.")
Destination.create!(name: "Zambezi rocks, Africa", image: "https://images.pexels.com/photos/1544376/pexels-photo-1544376.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/264715987/Rock%20-%2015527.mp4?width=1280&hash=058fe3af6ceeda7fbd35bc2bfd62746b10109f73", description: "Great boat rides")
Destination.create!(name: "Suko Waterfalls, Asia", image: "https://images.pexels.com/photos/3086736/pexels-photo-3086736.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", video: "https://cdn.pixabay.com/vimeo/212566447/Niagara%20Falls%20-%208603.mp4?width=640&hash=c4b960c47814ee6316386ab2773f2f0bea8fa5af", description: "Relaxing sounds.")
Destination.create!(name: "Fol, Americas", image: "https://images.pexels.com/photos/11183936/pexels-photo-11183936.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/136121362/Grand%20Canyon%20-%20380.mp4?width=480&hash=e53411240d534e1a379305c7ed5fc1485c1b19f2", description: "Great hiking trails")
Destination.create!(name: "Soke, Islands", image: "https://images.pexels.com/photos/2724664/pexels-photo-2724664.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/441301097/Clouds%20-%2045150.mp4?width=636&hash=a724e28adf9718da1b1b26e042ebf046bb35f15b", description: "Great for parachutes")
Destination.create!(name: "Datar, Islands", image: "https://images.pexels.com/photos/53389/iceberg-antarctica-polar-blue-53389.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/451829968/Glacier%20-%2047614.mp4?width=960&hash=d05578ca3eb7a29a528579a5fb562669cebcb4cc", description: "Extremely cold.")
Destination.create!(name: "Dote Crater, Islands", image: "https://images.pexels.com/photos/1460171/pexels-photo-1460171.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://player.vimeo.com/external/426615707.sd.mp4?s=98fb6ea9590cbb1d856640418fcc871241923d2b&profile_id=164&oauth2_token_id=57447761", description: "Weather is great")
Destination.create!(name: "Gadi Desert, Africa", image: "https://images.pexels.com/photos/2471261/pexels-photo-2471261.jpeg?auto=compress&cs=tinysrgb&w=600", video: "https://cdn.pixabay.com/vimeo/638016606/Desert%20-%2092837.mp4?width=1280&hash=af657b3903b3b77ea31069d97c47b99c593126ee", description: "Relaxing Rides.")

#Creator data
10.times{Creator.create(name:Faker::Name.name,isAdmin:true,destination:Destination.all.sample)}
# Creator.create!(name: "Koki", destination: 7)
# Creator.create!(name: "Kaka", destination: 3)
# Creator.create!(name: "Lazima", destination: 2 )
# Creator.create!(name: "Loki", destination: 1 )
# Creator.create!(name: "Daka", destination: 6)
# Creator.create!(name: "Hatu", destination: 5)
# Creator.create!(name: "Dero", destination: 10)
# Creator.create!(name: "Desa", destination: 8)
# Creator.create!(name: "Lawama", destination: 9)