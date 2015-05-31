class MsgsController < ApplicationController
	def index
		@C = Msg.all		
	end

	def create
		Msg.create(kp)
		redirect_to root_path
	end

	def new
		@C = Msg.new
	end

	def edit
		@C = Msg.find(params[:id])
	end

	def update
		@C = Msg.find(params[:id])
		@C.update_attributes(kp)
		redirect_to root_path
	end

	def destroy
		@C = Msg.find(params[:id])
		@C.destroy
		redirect_to root_path
	end

	private

	def kp
		params.require(:msg).permit(:content)
	end
end
