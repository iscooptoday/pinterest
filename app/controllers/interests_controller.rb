class InterestsController < ApplicationController
  before_action :set_interest, only: [:show, :edit, :update, :destroy]

  
  def index
    @interests = Interest.all
  end

 
  def show
  end

 
  def new
    @interest = Interest.new
  end

  
  def edit
  end

  
  def create
    @interest = Interest.new(interest_params)

   
      if @interest.save
        redirect_to @interest, notice: 'Interest was successfully created.' 
        
      else
        render action: 'new' 
        
      end
  end

  
  def update
      if @interest.update(interest_params)
        redirect_to @interest, notice: 'Interest was successfully updated.' 
        
      else
        render action: 'edit'  
      end
  end

  
  def destroy
    @interest.destroy
      redirect_to interests_url    
  end

 
  private
    
    def set_interest
      @interest = Interest.find(params[:id])
    end

    
    def interest_params
      params.require(:interest).permit(:description, :frequency)
    end
end
