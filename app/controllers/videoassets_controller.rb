class VideoassetsController < ApplicationController
  before_action :set_videoasset, only: [:show, :edit, :update, :destroy]

  def index
    @videoassets = Videoasset.all
    respond_to do |format|
      format.html 
      format.json { render :json=>@videoassets}
      format.xml { render :xml=>@videoassets }
    end
  end

  def show
 json_string = render_to_string formats: :json    
 json_object = JSON.parse(json_string)     
 render :json => JSON.pretty_generate(json_object)
  end

  def new
    @videoasset = Videoasset.new
    @mptypes = Mptype.all.map { |t| [t.mptype,t.id] }
    @points = @videoasset.points.build
    
  end

  def edit
  end

  def create
    puts videoasset_params
    @current_asset =  Videoasset.find_by_merlinid(params[:videoasset][:merlinid])
    if @current_asset then
      @current_asset.points.create(params[:videoasset][:points_attributes]["0"])
      respond_to do |format|
          
          if @current_asset.save
            format.html { redirect_to @current_asset, notice: 'Videoasset was successfully created.'}
            format.json { render action: 'show', status: :created, location: @current_asset }
          end     
          
        end        
     else
      @videoasset = Videoasset.new(videoasset_params)
       respond_to do |format|     
      if @videoasset.save
        format.html { redirect_to @videoasset, notice: 'Videoasset was successfully created.' }
        format.json { render action: 'show', status: :created, location: @videoasset }
      else
        format.html { render action: 'new' }
        format.json { render json: @videoasset.errors, status: :unprocessable_entity }
      end
    end
    end
    
  end

  def update
    respond_to do |format|
      if @videoasset.update(videoasset_params)
        format.html { redirect_to @videoasset, notice: 'Videoasset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @videoasset.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @videoasset.destroy
    respond_to do |format|
      format.html { redirect_to videoassets_url }
      format.json { head :no_content }
    end
  end

  private
    def set_videoasset
      @videoasset = Videoasset.find(params[:id]) 
    end

    def videoasset_params
      params.require(:videoasset).permit!
    end
end
