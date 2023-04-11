class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :position
      t.string :specialty

      t.timestamps
    end
  end
end
