5000.times do |index|
  book = Book.create(
    author:   Faker::Science.scientist,
    overview: Faker::Lorem.paragraph(sentence_count: 20)
  )
  puts "#{book} - #{index.next} created"
end

5000.times do |index|
  store = Store.create(
    title:   Faker::Company.name
  )
  puts "#{store} - #{index.next} created"
end
