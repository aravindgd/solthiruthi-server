class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.text :word
      t.text :meaning

      t.timestamps
    end
  end
end
