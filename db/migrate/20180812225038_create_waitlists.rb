class CreateWaitlists < ActiveRecord::Migration[5.2]
  def change
    create_table :waitlists do |t|
      t.string :email
      t.string :first_name

      t.timestamps
    end
  end
end
