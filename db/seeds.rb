# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(name: "test", email: "test@test.com", password: "password", image_url: "https://bbts1.azureedge.net/images/p/full/2021/09/34c206ee-2145-4b64-a745-8833c925a476.jpg")
User.create!(name: "Alex Honnold", email: "nobadconditions@rock.com", password: "password", image_url: "https://s3.amazonaws.com/images.gearjunkie.com/uploads/2022/06/GJ-Alex-Honnold-Podcast-Feature-1200x800.jpg")

area1 = Area.create!(name: "rock canyon", location: "Provo Utah", route_quantity: 500, image_url: "https://mountainproject.com/assets/photos/climb/106173279_medium_1494085405.jpg?cache=1652796615")
area2 = Area.create!(name: "little cottenwood", location: "Sandy Utah", route_quantity: 1043, image_url: "https://www.mountainproject.com/img/expand.svg")

route1 = Route.create!(area_id: 1, discipline: "sport", grade: "5.10a", name: "exposed cleavage", beta: "its a good one! tricky spot near the top", protection: "6 bolts to the anchors", location: area1.location, image_url: "https://mountainproject.com/assets/photos/climb/105967744_medium_1558384778.jpg?cache=1664828808")

route2 = Route.create!(area_id: 2, discipline: "sport", grade: "5.8", name: "PAs mother", beta: "really tricky section with the roof. good spot to rest about halfway up", protection: "3 bolts to anchors", location: area2.location, image_url: "https://www.redrockcanyonlv.org/wp-content/uploads/bfi_thumb/climbers-in-calico-hills-nr1jydgdpehuwfe8pxfvcl0lvlrnn1w5c2om2mv3pk.jpg")

route3 = Route.create!(area_id: 1, discipline: "sport", grade: "5.9", name: "by the falls", beta: "good warmup", protection: "4 bolts and the 2 chains for anchors", location: area1.location, image_url: "https://www.provo.org/home/showpublishedimage/10559/635198582615800000")

route4 = Route.create!(area_id: 2, discipline: "sport", grade: "5.14a", name: "broken fingers", beta: "almost died cuz I'm a freesolo crazy person but I'd do it again", protection: "8 bolts till the anchors", location: area2.location, image_url: "https://www.provo.org/home/showpublishedimage/10559/635198582615800000")

ascent1 = Ascent.create!(user_id: 1, route_id: 1, discipline: "sport", grade: "5.10a", date: "July 1, 2022", attempts: 3, beta: "its a good one! tricky spot near the top")

ascent2 = Ascent.create!(user_id: 1, route_id: 2, discipline: "sport", grade: "5.11c", date: "July 20, 2022", attempts: 14, beta: "really tricky section with the roof. good spot to rest about halfway up")

ascent3 = Ascent.create!(user_id: 2, route_id: 3, discipline: "sport", grade: "5.12d", date: "Aug 2, 2019", attempts: 1, beta: "good warmup")

ascent4 = Ascent.create!(user_id: 2, route_id: 4, discipline: "sport", grade: "5.14d", date: "Sep 13, 2019", attempts: 6, beta: "almost died cuz I'm a freesolo crazy person but I'd do it again")
