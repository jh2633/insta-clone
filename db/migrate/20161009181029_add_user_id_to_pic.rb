class AddUserIdToPics < ActiveRecord::Migration[5.0]
  def change
    add_reference :pics, :user, foreign_key: true
  end
end
