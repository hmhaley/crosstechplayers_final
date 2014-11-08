class EnablersController < ApplicationController
	
# before_action :make_sure_logged_in

	def index
		@enablers = Enabler.all
	end

	def show
		@enabler = Enabler.find(params[:id])
	end

	def new
		@enabler = Enabler.new
	end

	def create
		@enabler = Enabler.new(ena_user_params)
		if @enabler.save
			redirect_to enablers_path
		else
			render 'new'
		end
	end

	def edit
		@enabler = Enabler.find(params[:id])
	end

	def update
		@enabler = Enabler.find(params[:id])
		if @enabler.update_attributes(ena_user_params)
			redirect_to enablers_path
		else
			render 'edit'
		end
	end

	def destroy
		@enabler = Enabler.find(params[:id])
		@enabler.destroy
		redirect_to enablers_path
	end

private

	def make_sure_logged_in
		if !current_user
		redirect_to new_session_path
		end
	end

	def ena_user_params
      params.require(:enabler).permit(
		:prefix, 
		  :firstname, 
		  :lastname, 
		  :suffix, 
		  :jobtitle, 
		# should I have an org here, since I will have a connection through the relationship?
		  :org, 
		  :email, 
		  :altemail, 
		  :ct_enabler_type, 
		  :mobiletel, 
		  :officetel, 
		  :hometel, 
		  :fax, 
		  :indiv_web_url, 
		  :indiv_description, 
		  :indiv_notes, 
		  :work_address_street, 
		  :work_address_city, 
		  :work_address_state, 
		  :work_address_zip, 
		  :home_address_street, 
		  :home_address_city, 
		  :home_address_state, 
		  :home_address_zip, 
		  :spousal_status, 
		  :spouse_name, 
		  :orientation, 
		  :gender, 
		  :ethnicity, 
		  :country_of_origin, 
		# should I have an org here, since I will have a deals model and a connection through the relationship?
		  :major_deals, 
		# if i want this to be a text_area, do I have to define that here?
		  :staff_notes, 
		  :social_twitter, 
		  :social_linkedin, 
		  :social_facebook, 
		  :social_googleplus, 
		  :social_youtube, 
		  :social_pinterest, 
		  :social_instagram, 
		  :social_flickr, 
		  :social_blog, 
		  :social_platform_dominant, 
		  :date_last_updated
		)
    end
end
