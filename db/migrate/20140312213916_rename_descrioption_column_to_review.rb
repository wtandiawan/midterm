class RenameDescrioptionColumnToReview < ActiveRecord::Migration
   def self.up
    rename_column :books, :description, :review
  end

  def self.down
    rename_column :books, :review, :description
  end
end
