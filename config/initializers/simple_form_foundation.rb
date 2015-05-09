SimpleForm.setup do |config|
  config.wrappers :foundation, class: :input, hint_class: :field_with_hint, error_class: :error do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    # b.use :label_input
    b.use :error, wrap_with: { tag: :small }
    b.wrapper :my_wrapper, tag: :div, class: 'row' do |c|
      c.use :label, wrap_with: {tag: :div, class: 'large-3 columns'}
      c.use :input, wrap_with: {tag: :div, class: 'large-9 columns'}
    end
  end

  config.button_class = 'button'
  config.label_class ='text-right inline'
  config.error_notification_class = 'alert-box alert'
  config.default_wrapper = :foundation
end
