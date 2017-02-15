class Comment < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :post

  # include ActiveModel::Validations
  #   validates :tittle, :body, :presence => true


  # def create
  #   @post.comments.create! comments_params
  #   redirect to @post
  # end

  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # def comments_params
  #   params.required(:comment).permit(:body)
  # end

end
