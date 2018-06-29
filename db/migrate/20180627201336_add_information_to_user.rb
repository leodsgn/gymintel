class AddInformationToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string, null: false
    add_column :users, :birth_date, :date
    add_column :users, :phone_number, :string, limit: 20
    add_column :users, :gender, :string, limit: 6
    add_column :users, :document_id, :string, limit: 6 # cpf
    add_index :users, :first_name
    add_index :users, :last_name
    add_index :users, :gender
    add_index :users, :birth_date
  end
end
