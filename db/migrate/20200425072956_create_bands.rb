class CreateBands < ActiveRecord::Migration[6.0]
  def change
    create_table :bands do |t|
      t.string :name
      t.string :album_title
      t.string :date_started

      t.timestamps
    end
  end
end


