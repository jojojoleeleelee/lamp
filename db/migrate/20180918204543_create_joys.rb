class CreateJoys < ActiveRecord::Migration[5.2]
  def change
    create_table :joys do |t|
      t.text :word
      t.string :book
      t.integer :chapter

      t.timestamps
    end
  end
end
