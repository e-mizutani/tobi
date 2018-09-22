class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.bigint :user_id
      t.bigint :blog_id

      t.timestamps
    end
  end
end

