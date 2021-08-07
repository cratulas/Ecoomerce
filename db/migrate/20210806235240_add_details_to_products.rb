class AddDetailsToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :size, :string, default: nil
    add_column :products, :color, :string, default: nil
  end
end
