# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


enablers = Enabler.create([
{
    name: "CrossTech PipeLine",
    type: "pre-competitive nonprofit",
    web_url: "http://www.crosstechpipeline.org",
    description: "helps innovations on the west coast make it to the federal government",
    notes: "Notes",
    vision: "Vision",
    mission: "Mission",
    goals: "Goals",
    values: "Values",
    motto: "Motto",
    parent_or_child: "Parent",
    size_revenue: "300K",
    size_revenue_date_last_updated: ISODate("2014-11-07T00:00:00Z"),
    size_employees: "5",
    size_employees_date_last_updated: ISODate("2014-11-07T00:00:00Z"),
    hq_address_street: "1069 West Broad St",
    hq_address_city: "Alexandria",
    hq_address_state: "VA",
    hq_address_zip: "22046",
    hq_tel: "703-552-3200",
    hq_email: "management@crosstechpipeline.org",
    date_org_founded: ISODate("2014-08-01T00:00:00Z"),
    region_headquartered_in: "Washington, DC",
    major_deals: "no deals yet",
    social_twitter: "http://www.twitter.com/crosstechpipe",
    social_linkedin: "linked-in",
    social_facebook: "facebook",
    social_googleplus: "googe",
    social_youtube: "youtube",
    social_platform_dominant: "twitter",
    company_classification_type: "classification",
    company_size_structured: "1-9",
    company_special_designations: "special designations",
    ct_constituency_type: "CT constituent type",
    date_last_updated: ISODate("2014-11-07T00:00:00Z")
}
])