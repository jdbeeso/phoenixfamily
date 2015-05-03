module SuccessesHelper
	def success_params
		params.require(:success).permit(:content, :image, :category)
	end
end
