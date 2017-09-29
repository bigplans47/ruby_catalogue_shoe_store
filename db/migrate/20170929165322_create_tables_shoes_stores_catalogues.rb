class CreateTablesShoesStoresCatalogues < ActiveRecord::Migration[5.1]
  def change
    create_table(:shoes) do |t|
      t.column(:brand, :string)
      t.column(:price, :int)
    end

    create_table(:stores) do |t|
      t.column(:name, :string)
    end

    create_table(:catalogues) do |t|
      t.column(:shoe_id, :int)
      t.column(:store_id, :int)
    end

  end
end
