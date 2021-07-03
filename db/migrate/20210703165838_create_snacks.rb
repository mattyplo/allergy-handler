class CreateSnacks < ActiveRecord::Migration[6.0]
  def change
    create_table :snacks do |t|
      t.string :class
      t.string :type
      t.string :group
      t.string :name
      t.string :allergy

      t.timestamps
    end
  end
end
