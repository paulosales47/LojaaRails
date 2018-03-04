class CreateProdutos < ActiveRecord::Migration[5.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.integer :quantidade_estoque
      t.decimal :preco

      t.timestamps
    end
  end
end
