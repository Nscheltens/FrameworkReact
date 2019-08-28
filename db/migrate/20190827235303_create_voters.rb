class CreateVoters < ActiveRecord::Migration[6.0]
  def change
    create_table :voters do |t|
      t.string :email
      t.boolean :hasvote

      t.timestamps
    end
  end
end
