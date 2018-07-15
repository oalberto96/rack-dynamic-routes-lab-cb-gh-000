class Application
  @@item = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)

    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end

  def search_item(item_name)
    item = @@item.find {|i| i.name = item_name}
    item != nil ? "#{item.price}"
  end

end
