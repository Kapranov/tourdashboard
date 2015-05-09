class SpecialPickerInput < SimpleForm::Inputs::StringInput
  def input
    Rails.logger.debug "**running special input picker"
    value = object.send(attribute_name) if object.respond_to? attribute_name
    #display_pattern = I18n.t('datepicker.dformat', :default => '%d-%m-%Y')  + ' ' + I18n.t('timepicker.dformat', :default => '%R')
    display_pattern = I18n.t('datepicker.dformat', :default => '%d-%m-%Y')

    Rails.logger.debug "**display_pattern: #{display_pattern}"

    input_html_options[:value] ||= I18n.localize(value, :format => display_pattern) if value.present?

    input_html_options[:type] = 'text'
    #picker_pettern = I18n.t('datepicker.pformat', :default => 'dd-MM-yyyy') + ' ' + I18n.t('timepicker.pformat', :default => 'hh:mm')
    picker_pettern = I18n.t('datepicker.pformat', :default => 'dd-MM-yyyy')

    Rails.logger.debug "**pick_pattern: #{picker_pettern}"
    input_html_options[:data] ||= {}
    #input_html_options[:data].merge!({ format: picker_pettern, language: I18n.locale.to_s,
     #                                  date_weekstart: I18n.t('datepicker.weekstart', :default => 0) })

    #for the date picker
    input_html_options[:data].merge!({ "date-format"=>"dd-mm-yyyy"} )

    Rails.logger.debug "**input html #{input_html_options[:data]}"

    template.content_tag :div, :class=>'input-append date form_datetime', "data-date-format"=>"dd-mm-yyyy"  do
      input = super # leave StringInput do the real rendering
      input += template.content_tag :span, class: 'add-on' do
        template.content_tag :i, '', class: 'icon-calendar', data: { 'time-icon' => 'icon-time', 'date-icon' => 'icon-calendar' }
      end
      input
    end
  end
end
