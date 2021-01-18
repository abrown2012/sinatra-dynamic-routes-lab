require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    @user_name
  end

  get '/square/:number' do 
    @new_number = params[:number].to_i * params[:number].to_i
    "#{@new_number}"
  end

  get '/say/:number/:phrase' do 
    n = 0 
    @text = ""
    while n < params[:number].to_i
    @text = @text + "#{params[:phrase]}"
    n = n + 1
    end 
    @text
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    if params[:operation] == 'add'
      @number = params[:number1].to_i + params[:number2].to_i
      "#{@number}"
    elsif params[:operation] == 'subtract'
      @number = params[:number2].to_i - params[:number1].to_i
      "#{@number}"
    elsif params[:operation] == 'multiply'
      @number = params[:number1].to_i * params[:number2].to_i
      "#{@number}"
    elsif params[:operation] == 'divide'
      @number = params[:number1].to_i / params[:number2].to_i
      "#{@number}"
    end 
  end 

end