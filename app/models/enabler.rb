class Enabler
  include Mongoid::Document
  field :prefix, type: String
  field :firstname, type: String
  field :lastname, type: String
  field :suffix, type: String
  field :jobtitle, type: String
# should I have an org here, since I will have a connection through the relationship?
  field :org, type: String
  field :email, type: String
  field :altemail, type: String
  field :ct_enabler_type, type: String
  field :mobiletel, type: String
  field :officetel, type: String
  field :hometel, type: String
  field :fax, type: String
  field :indiv_web_url, type: String
  field :indiv_description, type: String
  field :indiv_notes, type: String
  field :work_address_street, type: String
  field :work_address_city, type: String
  field :work_address_state, type: String
  field :work_address_zip, type: String
  field :home_address_street, type: String
  field :home_address_city, type: String
  field :home_address_state, type: String
  field :home_address_zip, type: String
  field :spousal_status, type: String
  field :spouse_name, type: String
  field :orientation, type: String
  field :gender, type: String
  field :ethnicity, type: String
  field :country_of_origin, type: String
# should I have an org here, since I will have a deals model and a connection through the relationship?
  field :major_deals, type: String
# if i want this to be a text_area, do I have to define that here?
  field :staff_notes, type: String
  field :social_twitter, type: String
  field :social_linkedin, type: String
  field :social_facebook, type: String
  field :social_googleplus, type: String
  field :social_youtube, type: String
  field :social_pinterest, type: String
  field :social_instagram, type: String
  field :social_flickr, type: String
  field :social_blog, type: String
  field :social_platform_dominant, type: String
  field :date_last_updated, type: DateTime
end
