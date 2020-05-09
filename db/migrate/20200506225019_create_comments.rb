class CreateComments < ActiveRecord::Migration[5.2]
  def up
    create_table "comments", force: :cascade do |t|
      t.string "author_name"
      t.text "body"
      t.integer "article_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.references :article, foreign_key: true
    end
  end
end