class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :description
      t.string :title
      t.references :legislation, foreign_key: true

      t.timestamps
    end
  end
end
