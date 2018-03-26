class AddSearchToSpecialities < ActiveRecord::Migration
  def change
    add_column :specialities, :search, :string
  end
end
