require 'bundler'
Bundler.require

class App
  def call(env)
    req = Rack::Request.new(env)
    case req.path_info
      when "/"
        [200, {"Content-Type" => "text/html"}, ["root url"]]
      when '/other-url'
        [200, {"Content-Type" => "text/html"}, ["other url!"]]
      else
        [404, {"Content-Type" => "text/html"}, ["Url not found"]]
    end
  end
end