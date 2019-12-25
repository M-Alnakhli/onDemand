class WhishListsController < ApplicationController
  before_action :set_whish_list, only: [:show, :edit, :update, :destroy]

  # GET /whish_lists
  # GET /whish_lists.json
 
  # GET /whish_lists/new
  def new
    @whish_lists = current_user.whishLists.create(product_id: params[:product_id])
    redirect_to products_path
  end

  # GET /whish_lists/1/edit
  # DELETE /whish_lists/1
  # DELETE /whish_lists/1.json
  def destroy
    @whish_list.destroy
    respond_to do |format|
      format.html { redirect_to whish_lists_url, notice: 'Whish list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whish_list
      @whish_list = WhishList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whish_list_params
      params.require(:whish_list).permit(:product_id, :user_id)
    end
end
