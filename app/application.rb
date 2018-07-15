require 'pry'
class Application
  @@items = []
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = req.path.split(/items\//).last
      resp.write search_item(item)
    else
      resp.status = 404
      resp.write "Route not found"
    end
    resp.finish
  end

  def search_item(item_name)
    item = @@items.find {|i| i.name == item_name}
    item != nil ? "#{item.price}" : nil
  end

end
