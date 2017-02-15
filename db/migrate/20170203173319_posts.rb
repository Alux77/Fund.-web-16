class Posts < ActiveRecord::Migration

  def change
    create_table :posts do |t|
      t.string   :tittle
      t.text     :body
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end

end
