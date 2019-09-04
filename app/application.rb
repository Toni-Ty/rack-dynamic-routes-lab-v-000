<<<<<<< HEAD
class Application 
=======
class Application

  @@items = [Item.new("Figs",3.42), Item.new("Pears",0.99)]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item =@@items.find{|i| i.name == item_name}
        resp.write item.price
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status=404
      resp.write "Route not found"
    end
    resp.finish
  end
end
>>>>>>> 11c63f0d2428a3ec39dd20b6656202d2ba5c0a58
