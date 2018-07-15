class Application
  @@item = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      puts "sa"
    else
      resp.status = 404
    end
    resp.finish
  end

end
