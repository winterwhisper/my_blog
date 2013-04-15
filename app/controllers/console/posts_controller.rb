class Console::PostsController < Console::ConsoleBaseController
  # GET /console/posts
  # GET /console/posts.json
  def index
    @console_posts = Console::Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @console_posts }
    end
  end

  # GET /console/posts/1
  # GET /console/posts/1.json
  def show
    @console_post = Console::Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @console_post }
    end
  end

  # GET /console/posts/new
  # GET /console/posts/new.json
  def new
    @console_post = Console::Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @console_post }
    end
  end

  # GET /console/posts/1/edit
  def edit
    @console_post = Console::Post.find(params[:id])
  end

  # POST /console/posts
  # POST /console/posts.json
  def create
    @console_post = Console::Post.new(params[:console_post])

    respond_to do |format|
      if @console_post.save
        format.html { redirect_to @console_post, notice: 'Post was successfully created.' }
        format.json { render json: @console_post, status: :created, location: @console_post }
      else
        format.html { render action: "new" }
        format.json { render json: @console_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /console/posts/1
  # PUT /console/posts/1.json
  def update
    @console_post = Console::Post.find(params[:id])

    respond_to do |format|
      if @console_post.update_attributes(params[:console_post])
        format.html { redirect_to @console_post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @console_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /console/posts/1
  # DELETE /console/posts/1.json
  def destroy
    @console_post = Console::Post.find(params[:id])
    @console_post.destroy

    respond_to do |format|
      format.html { redirect_to console_posts_url }
      format.json { head :no_content }
    end
  end
end
