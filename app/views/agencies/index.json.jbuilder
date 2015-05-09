json.array!(@agencies) do |agency|
  json.extract! agency, :id, :agency_name, :agency_pn, :agency_edrpoy, :agency_city, :agency_street, :agency_post_index, :agency_house, :agency_apart, :city_legal, :street_legal, :post_index_legal, :house_legal, :apart_legal, :agency_phone_work, :agency_phone_mobile, :agency_email_one, :agency_email_two, :agency_email_three, :agency_web, :agency_comment, :bank, :mfo, :account, :contract_number, :contract_from
  json.url agency_url(agency, format: :json)
end
