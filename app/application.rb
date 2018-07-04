require 'pry'
class Application

  @@item = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      resp.write "Right Path"
    else
      resp.write "Route not found"
     #   resp.status = 404

    end
    binding.pry

    # binding.pry
    #
    # if req.path.match(/items/)
    #   item_name = req.path.split("/items/").last
    #   item = @@item.find {|i| i.name == item_name}
    #   if item
    #     resp.write item.price
    #   else
    #     resp.write "Item not found"
    #     resp.status = 400
    #   end
    #
    # else
    #   resp.write "Route not found"
    #   resp.status = 404
    # end
  end
end
