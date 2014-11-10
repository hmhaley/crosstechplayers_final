class Organization
  include Mongoid::Document
  field :name, type: String
  field :type, type: String
  field :web_url, type: String
  field :description, type: String
  field :notes, type: String
  field :vision, type: String
  field :mission, type: String
  field :goals, type: String
  field :values, type: String
  field :motto, type: String
  field :parent_or_child, type: String
  field :size_revenue, type: String
  field :size_revenue_date_last_updated, type: DateTime
  field :size_employees, type: String
  field :size_employees_date_last_updated, type: DateTime
  field :hq_address_street, type: String
  field :hq_address_city, type: String
  field :hq_address_state, type: String
  field :hq_address_zip, type: String
  field :hq_tel, type: String
  field :hq_email, type: String
  field :date_org_founded, type: DateTime
  field :region_headquartered_in, type: String
  # should I have major deals here, since I will have a deals model and a connection through the relationship?
  field :major_deals, type: String
  field :social_twitter, type: String
  field :social_linkedin, type: String
  field :social_facebook, type: String
  field :social_googleplus, type: String
  field :social_youtube, type: String
  field :social_platform_dominant, type: String
  field :company_classification_type, type: String
  field :company_size_structured, type: String
  field :company_special_designations, type: String
  field :ct_constituency_type, type: String
  field :date_last_updated, type: DateTime

  has_many :org_ena_join_tables

  def enablers
    Enabler.find enabler_ids
  end

  def enabler_ids
    enabler_ids_array = []
    self.org_ena_join_tables.each do |one_joining|
      if one_joining.enabler_id
        enabler_ids_array.push one_joining.enabler_id
      end 
    end
    enabler_ids_array 
  end

  def enabler_ids=(list)
    self.org_ena_join_tables.destroy
    list.each do |enabler_id|
      self.org_ena_join_tables.create(enabler_id: enabler_id)
    end
  end

  # some way of showing a list
  def join_list
    enablers_string = ""
    enablers.each do |one_enabler|
      enablers_string += " " + one_enabler.name
    end
    enablers_string.slice(2,enablers_string.length - 1)
    enablers_string
  end
end
