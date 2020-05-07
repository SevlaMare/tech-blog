require 'faker'

6.times do
  article_x = Article.create({
    title: Faker::Name.unique.name,
    body: Faker::Quotes::Shakespeare.hamlet_quote
  })

  # nested comment for each article
  2.times do
    article_x.comments.create({
      author_name: Faker::Name.name,
      body: Faker::Lorem.sentence(word_count: 4)
    })
  end
end
