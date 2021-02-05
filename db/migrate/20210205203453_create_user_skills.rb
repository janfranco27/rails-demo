class CreateUserSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :user_skills do |t|
      t.belongs_to :user
      t.belongs_to :skill
      t.string :status
      t.timestamps
    end
  end
end
