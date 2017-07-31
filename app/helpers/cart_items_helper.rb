module CartItemsHelper
  def my_form
   if some_condition
      form_for(@model) { |f| yield f }
   else
      form_for [@model, @nested_model] { |f| yield f }
   end
end
end
