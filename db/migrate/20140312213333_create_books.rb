class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.belongs_to :author, index: true

      t.timestamps
    end
  end
end
