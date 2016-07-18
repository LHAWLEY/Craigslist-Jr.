get '/categories/:category_id/articles/new' do
  @category = Category.find(params[:category_id])
  erb :'articles/new' #shows view with new articles form
end

get '/categories/:category_id/articles/:id' do
  @category = Category.find(params[:category_id])
  @article = Article.find(params[:id])
  erb :'/articles/show'
end

post '/categories/:category_id/articles' do

  @category = Category.find(params[:category_id])

  @article = @category.articles.new(params[:article])
  @article.secret_url
  if @article.save
    erb :'articles/saved'
  else
    @error_message = "You're missing required information"
    erb :'articles/new'
  end
end

get '/categories/:category_id/articles/:id/edit' do
  @category = Category.find(params[:category_id])

  @article = @category.articles.find(params[:id])

  erb :'articles/edit'
end
