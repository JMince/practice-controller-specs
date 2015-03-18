class AddNumberOfPagesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :number_of_pages, :integer
  end
end
