class CreateAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :agencies do |t|

      t.timestamps
    end
  end
end
