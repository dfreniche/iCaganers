#MIT License
#Diego Freniche 2012

#sevillapp-server.rb
#Mockup server: used to simulate a real API returning JSON data
#it does return JSON data, but always the same data.
#No database, no nothing. Just mocking, no big deal

require 'sinatra'
require 'json'


# Making a Sinatra app respect UTF-8:
#
# 1.  At the top of your app file, set $KCODE to 'u'.
#     This ensures your regexps are in UTF-8 mode by default,
#     and #inspect will output UTF-8 chracters correctly.
#     This option is on by default as of Ruby 1.9.
#     For more information on the $KCODE setting, see:
#     http://blog.grayproductions.net/articles/the_kcode_variable_and_jcode_library

$KCODE = 'u' if RUBY_VERSION < '1.9'
 
# 2.  Set content-type with charset=utf-8 param (not the default setting.)
#     This ensures the browser will render utf-8 characters correctly.
#     A before filter is a good place to do this:

before do
  content_type :json, 'charset' => 'utf-8'
end

get '/helloworld' do
    "Hello World!"
    
end

get '/caganets' do
    # sleep 10
    content_type :json

    if params[:locale] == 'ES_es'
        erb :hello
    elsif params[:locale] == 'EN'
        { :id => 01, :name => 'Ruta histórica' }.to_json
    else
        { :id => 345, :key2 => 'Grijander del nirmolen!' }.to_json
    end

    
end





__END__
@@ layout

<%= yield %>

@@ hello
[{"thumbImageName":"images.png","id":0,"price":"40","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images.png","name":"Caganet 1"},{"thumbImageName":"images-1.png","id":0,"price":"50.00","shortDescription":"My caganer precious!","photo":"images-1.png","name":"Gollum Caganet"},{"thumbImageName":"images-2.png","id":0,"price":"10.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-3.png","id":0,"price":"5.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-4.png","id":0,"price":"50.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-5.png","id":0,"price":"80.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-6.png","id":0,"price":"90.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-7.png","id":0,"price":"100.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"},{"thumbImageName":"images-8.png","id":0,"price":"15.00","shortDescription":"Loren ipsum caganer dolor sic amet","photo":"images-1.png","name":"Caganet 2"}]