require 'database_cleaner/active_record'
DatabaseCleaner.clean_with(:truncation)

ryan = User.create(username: "ryan", f_name: "Ryan", l_name:"Wilson", s_bio: "Software Engineer. Thinker. Innovator. Hero." , l_bio: "In west Philadelphia born and raised
On the playground was where I spent most of my days.", prof_img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D86LqlzZvkRI&psig=AOvVaw28jYc9XTXNb63BL3DFL5Wq&ust=1587674434067000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKChj6fy_OgCFQAAAAAdAAAAABAO", password: "a" )

ann = User.create(username: "ann", f_name: "Ann", l_name: "Duong", password: "a")
jenny = User.create(username: "jenny", f_name: "Jenny", l_name: "Ingram", password: "a")
joseph = User.create(username: "joseph", f_name: "Joseph", l_name: "Arias", password: "a")
matteo = User.create(username: "matteo", f_name: "Matteo", l_name: "Ricci", password: "a")
alan = User.create(username: "alanbanks", f_name: "Alan", l_name: "Banks", password: "a")
yoan = User.create(username: "yoanishere", f_name: "Yoan", l_name: "Ante", password: "a")
bri = User.create(username: "bri", f_name: "Bri", l_name: "Turner", password: "a")
carl = User.create(username: "carlthedude", f_name: "Carl", l_name: "Parm", password: "a")
yo = User.create(username: "yopark", f_name: "Yo", l_name: "Park", password: "a")
will = User.create(username: "william", f_name: "Will", l_name: "Harris", password: "a")
jason = User.create(username: "itsjinbro", f_name: "Jason", l_name: "Park", password: "a")
paul = User.create(username: "paulyd", f_name: "Ann", l_name: "Duong" ,password: "a")
lauren = User.create(username: "laurenreduxmaster", f_name: "Lauren", l_name: "Yu", password: "a")
valentin = User.create(username: "tacoman", f_name: "Valentin", l_name: "Placido", password: "a")
wesley = User.create(username: "kindaslepydoe", f_name: "Wesley", l_name: "Chen", password: "a")


ryan_status1 = Post.create(content: "Hello class!", user_id: ryan.id)
ryan_status2 = Post.create(content: "Lorem", user_id: ryan.id)
ryan_status3 = Post.create(content: "Checkout this blog I made", user_id: ryan.id)
ann_status1 = Post.create(content: "Class, this is Ann.", user_id: ann.id)
valentin_status2 = Post.create(content: "Hey guys!", user_id: valentin.id)
ann_status3 = Post.create(content: "This is Ann, I can do the Orange Justice", user_id: ann.id)
wesley_status1 = Post.create(content: "but i do be sleepy doe", user_id: wesley.id)

Comment.create(content: "Hello Ryan", post_id: ryan_status1.id, user_id: paul.id)
Comment.create(content: "Again, hello Ryan", post_id: ryan_status2.id, user_id: paul.id)
Comment.create(content: "Ann, hi.", post_id: ann_status1.id, user_id: jason.id)