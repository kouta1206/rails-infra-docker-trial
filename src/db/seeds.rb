# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

binding.pry
agent = Mechanize.new
agent.redirect_ok = false
agent.user_agent_alias = "Windows Mozilla"
page = agent.get('https://eiga.com/movie/review/ranking/')
titles = page.search("h2.title  a")
reviews = page.search(".txt-box ul li:first-child a")
# review_txt = reviews.map {|review|  reviews.inner_text }
review_txt = reviews.inner_text
# raing_stars()
# image_path()
# texts = titles.map {|title|  title.inner_text }
# texts.slice!(10..12)
p review_txt
