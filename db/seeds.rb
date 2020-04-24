require 'database_cleaner/active_record'
DatabaseCleaner.clean_with(:truncation)

ryan = User.create(username: "ryan", f_name: "Ryan", l_name:"Wilson", s_bio: "Software Engineer. Thinker. Innovator. Hero." , l_bio: "In west Philadelphia born and raised
On the playground was where I spent most of my days.", prof_img:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3D86LqlzZvkRI&psig=AOvVaw28jYc9XTXNb63BL3DFL5Wq&ust=1587674434067000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKChj6fy_OgCFQAAAAAdAAAAABAO", )

ann = User.create(username: "ann", f_name: "Ann", l_name: "Duong")

status = Post.create(content: "Hello World", user_id: ryan.id)
status = Post.create(content: "Hi again", user_id: ryan.id)
Like.create(post_id: status.id, user_id: ann.id)
