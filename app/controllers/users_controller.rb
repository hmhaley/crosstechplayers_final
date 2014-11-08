class UsersController < ApplicationController
# before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(use_user_params)
		if @user.save
			redirect_to organizations_path,
			notice: 'User was successfully created, and you will now be directed to the organizations.'
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(use_user_params)
			redirect_to @user,
			notice: 'User was successfully updated.'
		else
			render 'edit'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to organizations_path
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(
  		:username,
  		:password,
  		:password_confirmation,
  		:ct_user_type,
  		:is_admin, 
      :prefix, 
      :firstname, 
      :lastname, 
      :suffix, 
      :jobtitle, 
      :org, 
      :email, 
      :altemail, 
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
