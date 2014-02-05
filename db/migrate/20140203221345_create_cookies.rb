class CreateCookies < ActiveRecord::Migration
  def change
    create_table :cookies do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
