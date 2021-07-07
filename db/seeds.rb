# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
		
		weizheng = User.create(email: 'weizheng1910@gmail.com', password: '1234');
		bob = User.create(email: 'bob@gmail.com', password: '1234');
	

		# Boards

		animals = Board.create(name: 'Animals', users_id: 1);
		books = Board.create(name: 'Books', users_id: 1);
		sports = Board.create(name: 'Sports', users_id: 2);
		music = Board.create(name: 'Music', users_id: 2);

		# Pins 

		animal1 = Pin.create(img_link: 'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png', boards_id: 1);
		animal2 = Pin.create(img_link: 'https://www.ecnmy.org/wp-content/uploads/2019/05/32209148512_33272a7f49_b-800x560.jpg', boards_id: 1);
		books1 = Pin.create(img_link: 'https://www.imindq.com/Portals/0/EasyDNNcreates/273/950600p488EDNmainimg-book-mind-mapping.jpg', boards_id: 2);
		books2 = Pin.create(img_link: 'https://media.wired.com/photos/5be4cd03db23f3775e466767/125:94/w_2375,h_1786,c_limit/books-521812297.jpg', boards_id: 2);
		sports1 = Pin.create(img_link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Youth-soccer-indiana.jpg/450px-Youth-soccer-indiana.jpg', boards_id: 3);
		sports2 = Pin.create(img_link: 'https://s3-ca-central-1.amazonaws.com/quincy-network/wp-content/uploads/sites/9/2018/09/04123618/genericsports.jpg', boards_id: 3);
		music1 = Pin.create(img_link: 'https://i0.wp.com/liveforlivemusic.com/wp-content/uploads/2016/02/musicbrain.jpg?resize=610%2C390&ssl=1', boards_id: 4);
		music2 = Pin.create(img_link: 'https://api.time.com/wp-content/uploads/2018/04/listening-to-music-headphones.jpg?w=954&quality=85', boards_id: 4);

		#Comments 

		comment1 = Comment.create(text: 'I love to comment!', users_id: 1, pins_id: 1);
		comment2 = Comment.create(text: 'Hey, how you doing!', users_id: 2, pins_id: 1);