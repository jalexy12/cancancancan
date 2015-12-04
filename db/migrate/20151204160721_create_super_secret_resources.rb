class CreateSuperSecretResources < ActiveRecord::Migration
  def change
    create_table :super_secret_resources do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
