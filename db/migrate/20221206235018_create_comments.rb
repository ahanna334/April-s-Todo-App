class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :body
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
