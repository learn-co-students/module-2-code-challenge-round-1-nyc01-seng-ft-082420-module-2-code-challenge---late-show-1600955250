class Delete < ActiveRecord::Migration[5.1]
  def change
    remove_column :episodes, :name, :string
  end
end
