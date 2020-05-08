require 'faker'

tags_qty = 10
tags_qty.times do
  Tag.create({name: Faker::Company.unique.name})
end

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

  # set taggings from existing tags
  3.times do
    article_x.taggings.create(
      tag_id: rand(1..tags_qty).to_i
    )
  end
end
