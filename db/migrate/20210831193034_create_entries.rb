class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|

      t.string :name
      t.string :description
      t.string :deadline
      t.integer :rating
      t.integer :cost
      t.string :typeofaward
      t.string :url

      t.timestamps
    end
  end
end
