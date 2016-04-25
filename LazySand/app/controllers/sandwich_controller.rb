
class SandwichController < ApplicationController

  before_action :set_sandwich, only:[:show, :edit, :update, :destroy]

  def index
    @sandwich = Sandwich.all
  end

  def show
    @sandwich = Sandwich.find(params[:id])
  end

  def new
    @sandwich = Sandwich.new
  end

  def edit
  end

  def create
    if (sandwich_params[:ingredients].length < 250 )
      if(sandwich_params[:price] > 0 && sandwich_params[:price] < 10000)
        @sandwich = Sandwich.new(sandwich_params)
      else
        flash[:notice] = "Price must be positive and less than 10,000"
      end
    else
      flash[:notice] = "Ingredients must be less than 250 characters"
    end
    
    respond_to do |format|
      if @sandwich.save 
        flash[:success] = "Successfully created Sandwich"
        format.html { redirect_to @sandwich }
        format.json { render :show, status: :created, location: @sandwich }
      else
        format.html { render :new }
        format.json { render json: @sandwich.errors, status: :unprocessable_entity }
      end
    end
  end
   
  def update
    if (sandwich_params[:ingredients].length < 250 )
      if(sandwich_params[:price] > 0 && sandwich_params[:price] < 10000)
        respond_to do |format|
          if @sandwich.update(sandwich_params)
            flash[:success] = 'Sandwich was successfully updated.'
            format.html { redirect_to @sandwich }
            format.json { render :show, status: :ok, location: @sandwich }
          else
            format.html { render :edit }
            format.json { render json: @sandwich.errors, status: :unprocessable_entity }
          end
        end
      else
        flash[:notice] = "Price must be positive and less than 10,000"
      end
    else
      flash[:notice] = "Ingredients must be less than 250 characters"
    end
  end

  def destroy
    @sandwich.destroy
    respond_to do |format|
        flash[:success] = 'Sandwich was successfully destroyed.'
        format.html { redirect_to sandwich_url }
      format.json { head :no_content }
    end
  end

  private
  def sandwich_params
    params.require(:sandwich).permit(:bread, :ingredients, :price, :sandwich_id)
  end

  def set_sandwich
    @sandwich = Sandwich.find(params[:id])
  end
end
