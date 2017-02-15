get '/create' do # muestra posts descendientemente
  @post = Post.all.order('created_at DESC')
  erb :post
end

post '/create' do # registra los posts nvos
  @post = Post.new(tittle: params[:tittle], body: params[:body])

  if @post.save
    redirect to '/create'
  else
    erb :index
  end
end

get '/show/:id' do # muestra post específico
  @post = Post.find(params[:id])


  erb :showing_posts
end

get '/show/*/:id' do # muestra post específico
  @post = Post.find(params[:id])
    
  erb :showing_posts
end


get '/delete/:id' do # borra post
   @post = Post.find(params[:id])
   @post.delete

   if @post.delete
   redirect to '/create'
   end
end

get '/update' do # muestra todos los posts
  erb :showing_posts
end

post '/update/:id' do # modifica posts

  @tittle = params[:tittle]
  @tittle_nw = params[:tittle_nw]
  @body_nw = params[:body_nw]

  @post = Post.find(params[:id])
  @post.update_attributes(tittle: params[:tittle_nw], body: params[:body_nw])

  redirect to "/show/*/#{params[:id]}"
end