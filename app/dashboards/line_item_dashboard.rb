require "administrate/base_dashboard"

class LineItemDashboard < Administrate::BaseDashboard
  def table_attributes
    attributes + [:total_price]
  end

  def show_page_attributes
    attributes + [:total_price]
  end

  def form_attributes
    attributes
  end

  def attribute_types
    {
      order: Field::BelongsTo,
      product: Field::BelongsTo,
      quantity: Field::String,
      total_price: Field::String,
      unit_price: Field::String,
    }
  end

  private

  def attributes
    [
      :order,
      :product,
      :quantity,
      :unit_price,
    ]
  end
end
