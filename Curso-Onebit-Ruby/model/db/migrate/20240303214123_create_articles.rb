# db/migrate/[timestamp]_create_articles.rb
class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end