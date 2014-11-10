class OrgEnaJoinTable
  include Mongoid::Document

  belongs_to :organization
  belongs_to :enabler



end
