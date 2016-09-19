class ContractsController < ApplicationController
   def list
      @contracts = Contract.all
   end
   
   def show
      @contract = Contract.find(params[:id])
   end
   
   def new
      @contract = Contract.new
   end
   
   def create
      @contract = Contract.new(contract_params_

      if @contract.save
         redirect_to :action =? 'list'
      else
         render :action => 'new'
      end
   end

   def contract_params
      params.require(:contracts).permit(:title, :company)
   end
   
   def edit
      @contract = Contract.find(params[:id])
   end
   
   def update
      @contract = Contract.find(params[:id])

      if @contract.update_attributes(contract_param)
         redirect_to :action => 'show', :id => @contract
      else
         render :action => 'edit'
      end
   end

   def contract_param
      params.require(:contract).permit(:title, :company)
   end
   
   def delete
      Contract.find(params[:id]).destroy
      redirect_to :action => 'list'
   end
end
