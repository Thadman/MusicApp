class AddUserRefToBand < ActiveRecord::Migration[6.0]
  def change
    add_reference :bands, :user, null: false, foreign_key: true
  end

end
