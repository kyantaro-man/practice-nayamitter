class CreateTroubles < ActiveRecord::Migration[6.1]
  def change
    create_table :troubles do |t|
      t.text :text

      t.timestamps
    end
  end
end
