class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
