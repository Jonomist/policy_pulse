class AddTitleToConsultations < ActiveRecord::Migration[5.2]
  def change
    add_column :consultations, :title, :string
  end
end
