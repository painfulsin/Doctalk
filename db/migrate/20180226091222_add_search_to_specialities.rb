class AddSearchToSpecialities < ActiveRecord::Migration[5.1]
  def change
    add_column :specialities, :search, :string
  end
end
