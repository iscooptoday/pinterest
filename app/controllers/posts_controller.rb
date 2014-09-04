class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  # needs to login before viewing any page except index and show
  before_action :authenticate_user!, except: [:index] 
  
  #only the right user can edit,update or delete a post
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /it shows all the posts the .order"created at desc" shows in descending order
 
  def index
    @posts = Post.all.order("created_at DESC")
  end

  def show
end

  
  # GET /creates a new post
  def new
    @post = current_user.posts.build
  end

  
  # POST /this is what actually puts the new post in a database
  
  def create
    @post = current_user.posts.build(post_params)

      if @post.save
        redirect_to home_path, notice: 'Post was successfully created.' 
        
      else
        render action: 'new', notice: 'sorry can you do it again'
        
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

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to posts_path, notice: "no cant do" if @post.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
        params.require(:post).permit(:summary,)
    end
end
