class AddColumnToAppearences < ActiveRecord::Migration[5.1]
  def change
    add_column :appearences, :rating, :integer
  end
end
