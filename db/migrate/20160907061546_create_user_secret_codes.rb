class CreateUserSecretCodes < ActiveRecord::Migration
  def change
    create_table :user_secret_codes do |t|
      t.string :secret_code
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
