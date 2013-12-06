models = [
  Product,
  Store,
  User
]

models.each do |m|
  m.destroy_all
  m.index.delete rescue nil
end

FactoryGirl.create_list :user, 10

Camera.create!(
  name: "Nikon COOLPIX L27 Digital Camera",
  description: "Nikon are renowned for designing intelligent cameras that fuel your imagination and help you capture the perfect shot. With the COOLPIX L27, Nikon deliver just that. This easy-to-use, clever compact is all about keeping it simple with extraordinary results. With practical controls and smart automatic technology such as Motion Blur Reduction and the Smart Portrait System you can capture stunning portraits with smiling faces and open eyes. And with the option to create your own movie clips you can explore your artistic side and store memories you’ll want to watch time and again.

From wide-angle holiday shots to intimate close-ups of family and friends, the 5x optical zoom NIKKOR lens (26–130mm), 16-megapixel CCD sensor and clever Nikon technologies like Electronic VR image stabilisation combine to deliver crisp images, even on poster-size enlargements.

Available in black, white, red or silver, this stylish camera is perfect for all those point and shoot moments.",
  manufacturer: "Nikon",
  price: 70,
  resolution: "16MP",
  zoom: "5x",
  weight: 160
)

Camera.create!(
  name: "Nikon D3200 Digital SLR Camera",
  description: "Take your photography to the next level with the Nikon D3200!

Not only is this camera packed with advanced technology, it's also easy to use, which means it's perfect for beginners and more experienced users.

The D3200's 24.2-megapixel sensor and Expeed 3 processor have your photos looking so good that you won't believe your eyes. In fact, the two features come together to deliver breathtaking results!

This Nikon also records cinema-like HD videos at the touch of a button. Use the HDMI socket to enjoy clips on your big screen.

The D3200's Guide mode is on hand to help you master the camera's key features and controls. WiFi connectivity makes it possible to easily share amazing pictures on your smartphone (optional adapter required).

Supplied with an AF-S VR DX 18-55 mm stabilised lens

Internal menu languages: English, French, German, Dutch, Italian, Spanish, Swedish, Chinese (simplified and traditional), Japanese, Korean",
  manufacturer: "Nikon",
  price: 340,
  resolution: "24MP",
  zoom: "20x",
  weight: 454 ,
)

Camera.create!(
  name: "Canon Powershot SX240 HS Digital Camera",
  description: "The PowerShot SX240 HS is slim and compact yet it boasts an impressive 20x optical zoom. It is also packed with Canon features to help you capture great shots, effortlessly, making it an ideal camera for all family trips and occasions. Canon’s HS System and Intelligent IS help ensure your images are sharp, clear and vibrant whatever the light conditions, whilst full HD movies allow you to capture all the action in perfect detail.

Features include:

25 mm wide-angle lens with 20x optical zoom, extending to 39x with ZoomPlus
Optical Image Stabilizer with Intelligent IS
12.1 megapixel high-sensitivity CMOS sensor
Canon’s HS System, featuring a DIGIC 5 processor for excellent low-light performance
Advanced full HD movies (1080p) and HDMI-CEC
Large 7.5 cm (3.0”) PureColor II G LCD screen (460k dots)
Smart Auto with Advanced Scene Detection for great results in 58 different situations
Face ID can recognise and prioritise your family and friends
Manual, Av and Tv modes for full creative control
High-speed shooting functions including High-speed Burst HQ, Super Slow Motion Movie and Handheld Night Scene
Movie Digest records 4 seconds before each shot to create a bonus movie",
  manufacturer: "Canon",
  price: 129,
  resolution: "12MP",
  zoom: "20x",
  weight: 222,
)

# Television.create!(
#   name: "",
#   description: "",
#   manufacturer: "",
#   price: ,
#   tech: "",
#   size: "",
#   format: "",
#   feature: []
# )

Television.create!(
  name: "Samsung UE40F6320",
  description: "With contemporary looks and sharp Full HD viewing, the Samsung F6320 takes TV entertainment to the next level. Its revolutionary Smart Hub guides you into an exciting new world of content - including catch-up services and video on demand - through a simple set of pages. That's not all. With S Recommendation technology it takes the guesswork out of hunting down the content you like by finding the shows you'll want to watch. All this - plus the superior picture quality you expect from Samsung.

Let your TV find you more to watch

S Recommendation technology lets you discover more of the TV you love. It learns your preferences and searches Live TV, video on demand services and apps to recommend TV and online content tailored to you. The more you watch, the better it gets at finding the shows and movies you'll enjoy.

Content managed for you

Samsung's Smart Hub puts a world of entertainment in your living room with a range of apps, streaming services and more - and makes it all so easy to explore, by intelligently managing content into easy to navigate panels. As soon as you turn your TV on, you'll see your favourite programmes listed by the On TV panel. Choose a movie, select your videos or music, go online for social media - or select apps including Video on Demand, games, Lifestyle and Kids at the Samsung App store. The intuitive interface makes it all easy to find, with thumbnails to provide instant previews.",
  manufacturer: "Samsung",
  price: 499,
  tech: "LED",
  size: "40in",
  format: "1080p",
  feature: ["3D", "wifi"]
)

Television.create!(
  name: "Finlux 32F7020-T",
  description: "Stunning 3D Viewing - Finlux 3D TVs bring breath-taking action to life with passive 3D technology, allowing you to watch 3D movies and sporting action with exceptional added depth.
Finest Full HD 1080p Picture Clarity - Enjoy the finest details of your favourite movies, programmes, or games in all their glory when connected to a Full HD source such as a Blu-ray player or Games console.
Bright & Crisp LED Screen - LED back-lit TVs create greater contrast ratios, leading to a sharper image. They are also slimmer and consume less power than similarly-sized traditional LCDs.
Pause & Record Live TV - Stay in control of your TV viewing thanks to our PVR functionality. You can pause live TV, or even record shows up to seven days in advance via USB.
Electronic Programme Guide (EPG) - The on-screen TV guide will allow you to see what's on now and next, as well as allowing you to plan your viewing and PVR recordings up to 7 days in advance.",
  manufacturer: "Finlux",
  price: 259,
  tech: "LED",
  size: "32in",
  format: "1080p",
  feature: ["3D"]
)

Television.create!(
  name: "Samsung PS43F4500",
  description: "The Samsung F4500 is designed to provide superb picture quality, with advanced picture quality improvements from features like Black Optimiser improving contrast and Wide Colour Enhancer Plus enhancing images, uncovering hidden details and showing colours as they were meant to be seen. The F4500 brings you choice too, with built in Freeview offering over 50 channels, and ConnectShare allowing easy connection for USB memory sticks or hard disk drives. It means that along with your favourite shows, it’s easy to share your holiday pictures and videos on the largest screen in your house.",
  manufacturer: "Samsung",
  price: 309,
  tech: "Plasma",
  size: "43in",
  format: "720p",
  feature: []
)

##### STORE LOGIC

addresses = [
  "20-22 High St, Sheffield, South Yorkshire S1 2GE",
  "152-153 Fleet Street, London EC4A 2DQ",
  "108-110 Kensington High Street, London W8 4SG",
  "49 King's Road, London SW3 4ND",
  "241 City Road, London EC1V 1JQ",
  "432-436 Bethnal Green Road, London E2 0DJ",
  "302-304 Pentonville Road, Kings Cross, London N1 9XD",
  "112 High Street, London NW1 0LU",
  "177 Brompton Road, London SW3 1NF"
]

addresses.each do |address|
  Store.create!(address: address)
end







# Laptop.create!(
#   name: "",
#   description: "",
#   manufacturer: ""
#   price: ,
#   ram: "",
#   os: "",
#   cpu: "",
#   hdd: []
# )

# Laptop.create!(
#   name: "",
#   description: "",
#   manufacturer: ""
#   price: ,
#   ram: "",
#   os: "",
#   cpu: "",
#   hdd: []
# )

# Laptop.create!(
#   name: "",
#   description: "",
#   manufacturer: ""
#   price: ,
#   ram: "",
#   os: "",
#   cpu: "",
#   hdd: []
# )

# Laptop.create!(
#   name: "",
#   description: "",
#   manufacturer: ""
#   price: ,
#   ram: "",
#   os: "",
#   cpu: "",
#   hdd: []
# )