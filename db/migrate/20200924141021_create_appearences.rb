class CreateAppearences < ActiveRecord::Migration[5.1]
  def change
    create_table :appearences do |t|
      t.integer :episode_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
