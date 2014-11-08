class OrganizationsController < ApplicationController
	
# before_action :make_sure_logged_in

	def index
		@organizations = Organization.all
	end

	def show
		@organization = Organization.find(params[:id])
	end

	def new
		@organization = Organization.new
	end

	def create
		@organization = Organization.new(org_user_params)
		if @organization.save
			redirect_to organizations_path
		else
			render 'new'
		end
	end

	def edit
		@organization = Organization.find(params[:id])
	end

	def update
		@organization = Organization.find(params[:id])
		if @organization.update_attributes(org_user_params)
			redirect_to organizations_path
		else
			render 'edit'
		end
	end

	def destroy
		@organization = Organization.find(params[:id])
		@organization.destroy
		redirect_to organizations_path
	end

private

	def make_sure_logged_in
		if !current_user
		redirect_to new_session_path
		end
	end

	def org_user_params
    params.require(:organization).permit(
  		:name, 
  		:type, 
  		:web_url, 
  		:description, 
  		:notes, 
  		:vision, 
  		:mission, 
  		:goals, 
  		:values, 
  		:motto, 
  		:parent_or_child, 
  		:size_revenue, 
  		:size_revenue_date_last_updated, 
  		:size_employees, 
  		:size_employees_date_last_updated, 
  		:hq_address_street, 
  		:hq_address_city, 
  		:hq_address_state, 
  		:hq_address_zip, 
  		:hq_tel, 
  		:hq_email, 
  		:date_org_founded, 
  		:region_headquartered_in, 
  		# should I have major deals here, since I will have a deals model and a connection through the relationship?
  		:major_deals, 
  		:social_twitter, 
  		:social_linkedin, 
  		:social_facebook, 
  		:social_googleplus, 
  		:social_youtube, 
  		:social_platform_dominant, 
  		:company_classification_type, 
  		:company_size_structured, 
  		:company_special_designations, 
  		:ct_constituency_type, 
  		:date_last_updated, 
		)
    end
end
