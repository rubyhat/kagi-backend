# frozen_string_literal: true

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :slug, :description, :price, :product_type,
             :position, :is_active, :shop_id, :product_category_id, :stock_quantity,
             :created_at, :updated_at

  has_many :product_property_values, serializer: ProductPropertyValueSerializer
end
