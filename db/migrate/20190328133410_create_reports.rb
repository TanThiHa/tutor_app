class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.references :post, foreign_key: true
      t.date :study_date
      t.string :content
      t.timestamps
    end
  end
end
