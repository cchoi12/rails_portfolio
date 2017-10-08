puts '--------------------------------------------------------------'
puts '-------------- THREE TOPICS BEING CREATED --------------------'
puts '--------------------------------------------------------------'

3.times do |topic|
  Topic.create!(
    title: 'Topic #{topic}'
  )
end

puts ''
puts '----------------------------DONE-----------------------------'
puts ''
puts '--------------------------------------------------------------'
puts '------------------ TEN BLOGS BEING CREATED--------------------'
puts '--------------------------------------------------------------'

10.times do |blog|
  Blog.create!(
    title: "YoYo #{blog}",
    body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    topic_id: Topic.last.id
  )
end
puts ''
puts '----------------------------DONE-----------------------------'
puts ''
puts '--------------------------------------------------------------'
puts '-------------- FIVE SKILLS BEING CREATED----------------------'
puts '--------------------------------------------------------------'

5.times do |skill|
  Skill.create!(
    title: 'Whooooop Skills #{skill}',
    percent_utilized: 15
  )
end
puts ''
puts '----------------------------DONE-----------------------------'
puts ''
puts '--------------------------------------------------------------'
puts '-------------- NINE PORTFOLIO ITEMS BEING CREATED-------------'
puts '--------------------------------------------------------------'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "My Fabulous portfolio #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed',
    thumb_image: 'http://via.placeholder.com/350x200',
    main_image: 'http://via.placeholder.com/600x400'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "My Fabulous portfolio #{portfolio_item}",
    subtitle: 'Angular',
    body: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed',
    thumb_image: 'http://via.placeholder.com/350x200',
    main_image: 'http://via.placeholder.com/600x400'
  )
end
puts ''
puts '----------------------------DONE-----------------------------'
puts ''
puts '--------------------------------------------------------------'
puts '-------------- 3 TECHNOLOGIES BEING CREATED-------------------'
puts '--------------------------------------------------------------'

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end
puts ''
puts '----------------------------DONE-----------------------------'
