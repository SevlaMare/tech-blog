class CreateTaggings < ActiveRecord::Migration[5.2]
  def up
    create_table "taggings", force: :cascade do |t|
      t.integer "tag_id"
      t.integer "article_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.references :article, foreign_key: true
      t.references :tag, foreign_key: true
    end
  end
end
