require 'formtastic/actions/input_action'

module Formtastic
  module Actions
    class InputAction
      include Base
      include Buttonish

      def to_html
        wrapper do
          builder.submit(text, button_html)
        end
      end

      def wrapper(&block)
        template.content_tag(:div, 
          template.capture(&block), 
          wrapper_html_options
        )
      end

      def extra_button_html_options
        {class: "btn btn-primary"}
      end

      def default_wrapper_classes
        ["form-footer", "action", "#{options[:as]}_action"]
      end
    end
  end
end