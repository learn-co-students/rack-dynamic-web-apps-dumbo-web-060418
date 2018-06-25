class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    #interpolate variables and use the \n tool for line breaks
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
      ##write method is a way to output to the user on the page
      # just like puts, but puts only work for command line apps
    end

    resp.finish
    ## the response isnt sent back until we use the finish methods
  end

end
