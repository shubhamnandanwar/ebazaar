class ChangeColumnsToNotNullableToCategories < ActiveRecord::Migration[5.1]
  def change
    change_column_null :categories, :name, false
  end
end
