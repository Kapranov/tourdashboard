SimpleForm.setup do |config|
  config.wrappers :default, class: :input,
    hint_class: :field_with_hint, error_class: :field_with_errors do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label_input
    b.use :hint,  wrap_with: { tag: :span, class: :hint }
    b.use :error, wrap_with: { tag: :span, class: :error }
  end

  config.default_wrapper = :default
  config.boolean_style = :nested
  config.button_class = 'btn'
  config.error_notification_tag = :div
  config.error_notification_class = 'alert alert-error'
  config.label_class = 'control-label'
  config.generate_additional_classes_for = [:wrapper, :label, :input]
  config.browser_validations = false
end

require Rails.root.join("lib/core_ext/simple_form/inputs/special_picker_input")
require Rails.root.join("lib/core_ext/simple_form/inputs/string_input")
require Rails.root.join("lib/core_ext/simple_form/inputs/password_input")
Dir[Rails.root.join("lib/core_ext/simple_form/**/*.rb")].each { |f| require f }
