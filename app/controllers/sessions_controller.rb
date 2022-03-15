class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions
  def index
    @sessions = Session.all
  end

  # GET /sessions/1
  def show
    @bookmark = Bookmark.new
    @post = Post.new
  end

  # GET /sessions/new
  def new
    @session = Session.new
  end

  # GET /sessions/1/edit
  def edit
  end

  # POST /sessions
  def create
    @session = Session.new(session_params)

    if @session.save
      message = 'Session was successfully created.'
      if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referrer, notice: message
      else
        redirect_to @session, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      redirect_to @session, notice: 'Session was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
    message = "Session was successfully deleted."
    if Rails.application.routes.recognize_path(request.referrer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referrer, notice: message
    else
      redirect_to sessions_url, notice: message
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_params
      params.require(:session).permit(:course_id, :professor_id)
    end
end
