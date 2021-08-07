class AddStockToVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :variants, :stock, :integer
  end
end
