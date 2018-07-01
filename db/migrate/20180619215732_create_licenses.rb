class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.string :key
      t.datetime :act_date
      t.datetime :exp_date
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
