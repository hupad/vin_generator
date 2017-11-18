class CreateVins < ActiveRecord::Migration[5.0]
  def change
    create_table :vins do |t|
      t.string :value

      t.timestamps
    end
  end
end
