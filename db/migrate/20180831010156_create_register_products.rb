class CreateRegisterProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :register_products do |t|
      t.string :nome
      t.string :id_seq
      t.text :endereco
      t.decimal :preco
      t.string :email

      t.timestamps
    end
  end
end
