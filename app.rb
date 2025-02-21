require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end 

  get "/square/:number" do 
  result = params[:number].to_i ** 2
    "#{result}"
  end 

  get "/say/:number/:phrase" do
    string = ""
    num = params[:number].to_i
    num.times do 
    string += "#{params[:phrase]}"
    end
    string 

  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}." 
  end 

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation].to_s
    if operation == "subtract"
      "#{num1 - num2}"
    elsif operation == "add"
      "#{num1 + num2}"
    elsif operation == "multiply"
     "#{num1 * num2}"
    elsif operation == "divide"
      "#{num1 / num2}"
  end
end 




end