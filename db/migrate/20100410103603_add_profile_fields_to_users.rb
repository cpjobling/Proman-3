class AddProfileFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :title, :string
    add_column :users, :first_name, :string
    add_column :users, :initials, :string
    add_column :users, :last_name, :string
    add_column :users, :known_as, :string
    add_column :users, :staff_or_student_number, :integer
    add_column :users, :terms, :boolean, :default => false
  end

  def self.down
    remove_column :users, :terms
    remove_column :users, :staff_or_student_number
    remove_column :users, :known_as
    remove_column :users, :last_name
    remove_column :users, :initials
    remove_column :users, :first_name
    remove_column :users, :title
  end
end