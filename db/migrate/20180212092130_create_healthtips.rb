class CreateHealthtips < ActiveRecord::Migration
  def change
    create_table :healthtips do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
