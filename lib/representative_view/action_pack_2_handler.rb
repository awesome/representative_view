require 'representative_view/view_helpers'

module RepresentativeView

  class ActionPack2Handler < ActionView::TemplateHandler

    include ActionView::TemplateHandlers::Compilable

    def compile(template)
      <<-RUBY
      representative_view(#{template.format.inspect} || template_format) do |r|
        #{template.source}
      end
      RUBY
    end

  end


end

ActionView::Template.register_template_handler(:rep, RepresentativeView::ActionPack2Handler)
