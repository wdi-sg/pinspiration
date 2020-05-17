# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pins_list = [
  ["8 Amazing Coding Games for Beginners", "Learning to code has become a lot easier, nowadays there are many ways to learn coding, one of the best and most enjoyable ways are coding games, these will help you learn to code and understand basic computer programming.", "http://appexpanse.com/8-amazing-coding-games-for-beginners-to-improve-your-coding-skills/", 1],
  ["The Ultimate HTML 5 Cheat Sheet", "Designing websites can be quite a jungle sometimes since, with time, the number of languages at our disposal has gotten so much greater.", "https://bitrebels.com/design/the-ultimate-html-5-cheat-sheet/", 1],
  ["12 bedroom plants to purify the air & improve your sleep", "There’s nothing worse than tossing and turning all night, before being awoken by the sound of your alarm clock just minutes after you finally manage to nod off! These sleepless nights can take their toll on our energy, productivity, mood and overall quality of life.", "https://www.naturallivingideas.com/12-plants-for-your-bedroom-to-help-you-sleep/", 2],
  ["Nobuhiro Nakanishi", "Osaka, Japan-based Nobuhiro Nakanishi’s mesmerizing body of work entitled Layered Drawings is truly breathtaking. He photographs a scene or object repeatedly over time, then laser prints each shot and mounts them onto acrylic. Change is captured in each frame, and once layered, they become sculpture installations. The overall effect shows movement and the subtle passage of time.", "https://design-milk.com/nobuhiro-nakanishi/", 1],
  [ "Fullness of Time: basic outline of settings", "This is where an underground settlement of chipless persons would be hiding out, only to be betrayed by one of their own. A hunter of the chipless. Ruby, the leader, is killed by Jonas, the hunter, in front of an old security camera which was used by Michael, the watcher, to see how his friends were doing.", "https://benevolenspsittacorum.wordpress.com/2018/05/18/fullness-of-time-basic-outline-of-settings/", 2]
]

pins_list.each do |title, description, url, user_id|
  Pin.create(title: title, description: description, url: url, user_id: user_id)
end
