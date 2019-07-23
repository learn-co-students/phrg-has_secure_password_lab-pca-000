# frozen_string_literal: true

class UpdateUserName < ActiveRecord::Migration
  def change
    rename_column :users, :username, :name
    rename_column :users, :password_digest, :password
    add_column :users, :password_confirmation, :string
  end
end
