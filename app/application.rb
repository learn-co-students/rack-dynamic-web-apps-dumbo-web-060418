class Application

  def call(env)
    resp = Rack::Response.new

    num_01 = Kernel.rand(1..20)
    num_02 = Kernel.rand(1..20)
    num_03 = Kernel.rand(1..20)

    resp.write "#{num_01}\n"
    resp.write "#{num_02}\n"
    resp.write "#{num_03}\n"


    if num_01 == num_02 && num_02 == num_03
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.finish
  end
end
