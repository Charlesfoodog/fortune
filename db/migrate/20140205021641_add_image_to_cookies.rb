class AddImageToCookies < ActiveRecord::Migration
  def change
    add_column :cookies, :image, :string
  end
end
