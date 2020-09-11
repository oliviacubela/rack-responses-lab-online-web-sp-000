class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, greeting_response ]
  end

  def greeting_response
    (Time.now.hour < 12) ? ["<em>Good Morning!</em>"] : ["<em>Good Afternoon!</em>"]
  end
end
#
#
# t = Time.now
# if t.hour < 12 --> "good morning!"
# else
#   "good afternoon!"
# end


# class MyServer
#   def call(env)
#     return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
#   end
#
#   def pretty_response
#     (Time.now.to_i % 2).zero? ?  ["<em>Hello</em>"] : ["<strong>Hello</strong>"]
#   end
# end


# class Application
#
#   def call(env)
#     resp = Rack::Response.new
#
#     num_1 = Kernel.rand(1..20)
#     num_2 = Kernel.rand(1..20)
#     num_3 = Kernel.rand(1..20)
#
#     resp.write "#{num_1}\n"
#     resp.write "#{num_2}\n"
#     resp.write "#{num_3}\n"
#
#     if num_1==num_2 && num_2==num_3
#       resp.write "You Win"
#     else
#       resp.write "You Lose"
#     end
#
#     resp.finish
#   end
#
# end











# If it's before noon, greet the user with "Good Morning!"
# If it's after noon, greet the user with "Good Afternoon!"
# Remember that getting the time may return results in 24 hour time!
# Anytime on or after 12 is the afternoon.
