# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


enablers = Enabler.create([
{
    prefix: "Mr.", 
    firstname: "Martin", 
    lastname: "Haley", 
    suffix: "Jr", 
    jobtitle: "Co-Founder", 
    # should I have an org here, since I will have a connection through the relationship?
    org: "CrossTech PipeLine", 
    email: "mhaley@vmgstrategies.com", 
    altemail: "hmhaley@yahoo.com", 
    ct_enabler_type: "cofounder", 
    mobiletel: "mobile tel", 
    officetel: "office tel", 
    hometel: "home tel", 
    fax: "fax", 
    indiv_web_url: "linkedin", 
    indiv_description: "Martin is studying programming", 
    indiv_notes: "notes", 
    work_address_street: "work st", 
    work_address_city: "work city", 
    work_address_state: "work state", 
    work_address_zip: "work zip", 
    home_address_street: "home st", 
    home_address_city: "home city", 
    home_address_state: "home state", 
    home_address_zip: "home zip", 
    spousal_status: "single", 
    spouse_name: "NA", 
    orientation: "NA", 
    gender: "NA", 
    ethnicity: "NA", 
    country_of_origin: "USA", 
    # should I have an org here, since I will have a deals model and a connection through the relationship?
    major_deals: "major deals", 
    # if i want this to be a text_area, do I have to define that here?
    staff_notes: "staff notes", 
    social_twitter: "twitter", 
    social_linkedin: "link", 
    social_facebook: "face", 
    social_googleplus: "goog", 
    social_youtube: "yout", 
    social_pinterest: "pint", 
    social_instagram: "insta", 
    social_flickr: "flic", 
    social_blog: "blog", 
    social_platform_dominant: "twitt", 
    date_last_updated: "2014-11-07", 
}
])

organizations = Organization.create([
{
    name: "CrossTech PipeLine", 
    type: "nonprofit", 
    web_url: "http://www.crosstechpipeline.org", 
    description: "helps startups find advisors", 
    notes: "has a great board of advisors", 
    vision: "vision", 
    mission: "mission", 
    goals: "goals", 
    values: "values", 
    motto: "motto", 
    parent_or_child: "parent", 
    size_revenue: "150K", 
    size_revenue_date_last_updated: "2014-11-07", 
    size_employees: "5", 
    size_employees_date_last_updated: "2014-11-07", 
    hq_address_street: "hq street", 
    hq_address_city: "hq city", 
    hq_address_state: "hq state", 
    hq_address_zip: "hq zip", 
    hq_tel: "hq tel", 
    hq_email: "management@crosstechpipeline.org", 
    date_org_founded: "2014-11-07", 
    region_headquartered_in: "DC", 
    # should I have major deals here, since I will have a deals model and a connection through the relationship?
    major_deals: "none yet", 
    social_twitter: "twitter", 
    social_linkedin: "linked", 
    social_facebook: "face", 
    social_googleplus: "goog", 
    social_youtube: "yout", 
    social_platform_dominant: "twitter", 
    company_classification_type: "enabler", 
    company_size_structured: "very small", 
    company_special_designations: "none", 
    ct_constituency_type: "precompetitive marketplace", 
    date_last_updated: "2014-11-07T00:00:00Z"
    }
])