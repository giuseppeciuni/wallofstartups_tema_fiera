class StartupsController < ApplicationController
  before_action :set_startup, only: [:show, :edit, :update, :destroy]

  # GET /startups
  # GET /startups.json
  def index
    @startups = Startup.all
    @categories = Category.all  #potrebbe essere ottimizzato facendolo caricare solo una volta
    #startup_in_the_spotlight sono le startup che pagano per stare in evidenza
    @startup_in_the_spotlight = Startup.where(in_the_spotlight: true)
    #startup_star e' la startup che paga di piu e che e' piu in evidenza
    @startup_star = Startup.where(:rank => @maxvalue)
  end

  # GET /startups/1
  # GET /startups/1.json
  def show
   @youtube = YouTubeIt::Client.new
   @vimeo = Vimeo::Simple::Video
  end

  # GET /startups/new
  def new
    puts"--------------------------"
    p params
    @startup = Startup.new
    @categories = Category.all
    
  end

  # GET /startups/1/edit
  def edit
   @youtube = YouTubeIt::Client.new
   @vimeo = Vimeo::Simple::Video
   p startup_edit_params
  end

  # POST /startups
  # POST /startups.json
  def create
    @startup = Startup.new(startup_params)
    puts "ciao"
    p startup_params
    #nota bene: ogni ad variabile deve corrispondere una colonna sul db 
    #creo il canonical a partire dall'url video passato dall'utente
    #uniformo la url a partire dai video youtube o vimeo
    #salvo le url dei thumbnail dei video youtube o vimeo 
    @startup.uniformed_url = uniform_url(startup_params[:video_url])
    @startup.video_thumbnail_url = get_thumbnail(startup_params[:video_url])
    @startup.video_type = get_video_type(startup_params[:video_url])
    @startup.category = startup_params[:category]
    #@startup.privacy_check = startup_params[:privacy_check]
    #@startup.approved = false  #la startup appena registrata di default non approvata
    @startup.in_the_spotlight = startup_params[:in_the_spotlight]

    puts "@startup.approved = " + @startup.approved.to_s
    puts "@startup.in_the_spotlight = " + @startup.in_the_spotlight.to_s

    respond_to do |format|
      if @startup.save
        format.html { redirect_to @startup, notice: 'Startup was successfully created.' }
        format.json { render :show, status: :created, location: @startup }
      else
        format.html { render :new }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /startups/1
  # PATCH/PUT /startups/1.json
  def update
    respond_to do |format|
      if @startup.update(startup_params)
        format.html { redirect_to @startup, notice: 'Startup was successfully updated.' }
        format.json { render :show, status: :ok, location: @startup }
      else
        format.html { render :edit }
        format.json { render json: @startup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /startups/1
  # DELETE /startups/1.json
  def destroy
    @startup.destroy
    respond_to do |format|
      format.html { redirect_to startups_url, notice: 'Startup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_startup
      @startup = Startup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def startup_params
      params.require(:startup).permit(:title, :description, :video_url, :rank)
    end










####################### METODI FIERA DELLE STARTUP ############################
###############################################################################

  #metodo che crea l'url canonical a partire dalla url del video youtube caricato dall'utente
  def create_url_canonical(url)
    facebook_access_token = "&access_token=361738927264311|BQ5pYd25DGkhmOblT3qFtUGLI2o"
    url = url + facebook_access_token
    return url
  end
    
  
  # metodo che uniforma le url delle startup: in particolare controlla se sono di tipo youtube o di tipo vimeo
  # se di tipo youtube allora le lascia così come sono, se sono di tipo vimeo aggiunge al codice vimeo la parte
  # antecedente della url
  def uniform_url(url)
    puts 'url passato :' + url
    #caso url di tipo youtube
    if url.include? "youtube"
      @youtube_it = YouTubeIt::Client.new
      uniformed_url = @youtube_it.video_by(url).player_url
    elsif url.include? "vimeo"
      vimeo_video = url.split("/").last
      uniformed_url = "//player.vimeo.com/video/" + vimeo_video
    else 
      uniformed_url = "Video non riconosciuto. Si possono caricare solo video Youtube e Vimeo" 
    end 
    puts "url uniformato: " + uniformed_url 
   return uniformed_url
  end

  
  # metodo che restituisce l'url dell'immagine thumbnail associata ad un video youtube/vimeo
  def get_thumbnail(url)
    if url.include? "youtube"
      @youtube_it = YouTubeIt::Client.new
      thumbnail = @youtube_it.video_by(url).thumbnails[1].url    #restituisce l'url del thumbnail del video
    elsif url.include? "vimeo"
      vimeo_video = url.split("/").last
      video = Vimeo::Simple::Video.info(vimeo_video)
      thumbnail = video[0]['thumbnail_large']
    else 
      thumbnail = "Thumbnail non disponibile!"
    end 
    return thumbnail
  end


  # metodo che restituisce il tipo di video [0 per youtube, 1 per Vimeo]
  def get_video_type(url)
    if url.include? "youtube"
      video_type = 0
    elsif url.include? "vimeo"
      video_type = 1
    else return -1
    end
  end






    # Never trust parameters from the scary internet, only allow the white list through.
    #questa funzione serve per definire quali parametri possono essere inseriti  da interfaccia grafica, servono per evitare fishing, sql injection etc etc  
  def startup_params
    params.require(:startup).permit(:title, :description, :video_url, :subcategory, :rank, :approved, :in_the_spotlight, :startup_id, :order_by, :funding_need)
  end

end
