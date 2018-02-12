class ChangeDatatypeHealth < ActiveRecord::Migration
   def up
        change_column :healths, :description, :text
    end

    def down
        change_column :healths, :description, :string
    end
end
