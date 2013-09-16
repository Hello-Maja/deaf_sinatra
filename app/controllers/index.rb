get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do

  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
   @user = params[:user_input]
  if @user == @user.upcase
   @grandma = "No not since 1983"
  else 
    @grandma = "Speak up sonny!!" 
  end

  redirect to("/?grandma=#{@grandma}")

  # redirect (i.e. make a get request) to ... ""
end
