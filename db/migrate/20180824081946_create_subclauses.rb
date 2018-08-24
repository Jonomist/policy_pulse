class CreateSubclauses < ActiveRecord::Migration[5.2]
  def change
    create_table :subclauses do |t|
      t.references :clause, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
