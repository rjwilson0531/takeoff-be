class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :f_name
      t.string :l_name
      t.string :s_bio
      t.text :l_bio
      t.text :prof_img
      t.integer :company_id
      t.string :location

      t.timestamps
    end
  end
end
