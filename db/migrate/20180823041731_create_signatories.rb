class CreateSignatories < ActiveRecord::Migration[5.2]
  def change
    create_table :signatories do |t|
      t.date :date
      t.string :person
      t.string :organization
      t.string :location
      t.references :signatory_category, foreign_key: true
      t.references :consultation, foreign_key: true

      t.timestamps
    end
  end
end
