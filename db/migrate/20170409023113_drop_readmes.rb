class DropReadmes < ActiveRecord::Migration[5.0]
  def change
    drop_table :readmes do |t|
      t.string :file_name
      t.text :cargo
      t.references :package, foreign_key: true

      t.timestamps
    end
  end
end
