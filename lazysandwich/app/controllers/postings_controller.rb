class PostingsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_posting, only: [:show, :edit, :update, :destroy]

  # GET /postings
  # GET /postings.json
  def index
    if params[:search].present?
      @postings = Posting.near(params[:search])
    else
      @postings = Posting.all
    end
    @json = Gmaps4rails.build_markers(@postings) do |posting, marker|
            posting_link = view_context.link_to posting.name, posting_path(posting)
            marker.lat posting.latitude
            marker.lng posting.longitude
            marker.title posting.name
            marker.infowindow "<h5><u>#{posting_link}</u></h5> 
                       <i>#{posting.street}, #{posting.city}</i><br>
                       #{posting.user.email}"
            marker.picture({
                  :url => "http://i.picresize.com/images/2016/05/03/wx4ua.png",
                  :width   => 32,
                  :height  => 32
                 })
    end
  end

  # GET /postings/1
  # GET /postings/1.json
  def show
  end

  # GET /postings/new
  def new
    @posting = current_user.postings.build
    #@sandwich = @posting.sandwiches.build
  end

  # GET /postings/1/edit
  def edit
  end

  # POST /postings
  # POST /postings.json
  def create
    @posting = current_user.postings.build(posting_params)

    respond_to do |format|
      if @posting.save
        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
        format.json { render :show, status: :created, location: @posting }
      else
        format.html { render :new }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postings/1
  # PATCH/PUT /postings/1.json
  def update
    #@posting = Posting.find(params[:post_id])

    respond_to do |format|
      if @posting.update(posting_params)
        format.html { redirect_to @posting, notice: 'Posting was successfully updated.' }
        format.json { render :show, status: :ok, location: @posting }
      else
        format.html { render :edit }
        format.json { render json: @posting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.json
  def destroy
    @posting.destroy
    respond_to do |format|
      format.html { redirect_to postings_url, notice: 'Posting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posting
      @posting = Posting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posting_params
      params.require(:posting).permit(:name, :ingredients, :price, :street, :city, :state, :country)
    end
end
