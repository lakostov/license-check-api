class CreateModullicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :modullicenses do |t|
      t.string :key
      t.datetime :act_date
      t.datetime :exp_date
      t.references :license, foreign_key: true
      t.references :submodule, foreign_key: true

      t.timestamps
    end
  end
end
