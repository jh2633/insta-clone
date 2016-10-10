class AddImagesToPic < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :description, :string
  end
end
