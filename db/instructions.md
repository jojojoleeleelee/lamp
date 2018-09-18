Open rails console by running ```rails c```

love = eval File.open('db/love.rb').read

love.each do |loves| love = Love.create!( { word: loves[:verse_text], book: loves[:book_name], chapter: loves[:chapter_id] } ) end

joy = eval File.open('db/joy.rb').read

joy.each do |joys| joy = Joy.create!( { word: joys[:verse_text], book: joys[:book_name], chapter: joys[:chapter_id] } ) end

peace = eval File.open('db/peace.rb').read

peace.each do |peaces| peace = Peace.create!( { word: peaces[:verse_text], book: peaces[:book_name], chapter: peaces[:chapter_id] } ) end
