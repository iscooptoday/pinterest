class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /it shows all the posts
 
  def index
    @posts = Post.all
  end

  # GET /it shows the post selected
  
  def show
  end

  # GET /creates a new post
  def new
    @post = Post.new
  end

  # GET /edits a post
  def edit
  end

  # POST /this is what actually puts the new pin in a database
  
  def create
    @post = Post.new(post_params)

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.' 
        
      else
        render action: 'new' 
        
      end
  end

  # PATCH/PUT /updates a post
  
  def update
  
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.' 
       
      else
        render action: 'edit' 
        
    end  
  end

  # DELETE /it deletes it
    def destroy
    @post.destroy
          redirect_to posts_url     
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:summary, :source)
    end
end
