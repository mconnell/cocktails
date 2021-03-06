module ApplicationHelper

  def add_child_link(name, association)
    link_to(name, "javascript:void(0)", :class => "add_child btn", :"data-association" => association)
  end

  def remove_child_link(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0)", :class => "remove_child btn")
  end

  def new_child_fields_template(form_builder, association, options = {})
    options[:object]  ||= form_builder.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize
    options[:form_builder_local] ||= :form
  
    content_for :form_templates do
      content_tag(:div, :id => "#{association}_fields_template", :style => "display: none") do
        form_builder.fields_for(association, options[:object], :child_index => "new_#{association}") do |form|
          render options[:partial], options[:form_builder_local] => form
        end
      end
    end
  end


  def navigation_li(controller_sym, &block)
    options = (controller_sym == controller.controller_name.to_sym) ? {:class => 'active'} : {}
    content_tag(:li, options, &block)
  end

end
