class CreateCheckGroups < ActiveRecord::Migration
  def change
    create_table :check_groups do |t|
      t.integer :number
      t.datetime :refDate

      t.timestamps
    end
  end
end
