class CreateRecordLabels < ActiveRecord::Migration[6.0]
  def change
    create_table :record_labels do |t|
      t.string :name
      t.string :address
      t.string :representation
      t.references :band, null: false, foreign_key: true

      t.timestamps
    end
  end
end
