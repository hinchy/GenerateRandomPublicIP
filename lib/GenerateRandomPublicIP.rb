# generate_random_public_ip.rb
require "ipaddr"

class GenerateRandomPublicIP
  def self.getip 

    classAPrivate = IPAddr.new("10.0.0.0/8")
    classBPrivate = IPAddr.new("172.16.0.0/12")
    classCPrivate = IPAddr.new("192.168.0.0/16")
    thisNetwork = IPAddr.new("0.0.0.0/8")
    loopback = IPAddr.new("127.0.0.1")
    broadcast1 = IPAddr.new("0.0.0.0")
    broadcast2 = IPAddr.new("255.255.255.255")     


    begin 
      randomIp = Array.new(4){rand(256)}.join('.') 
    end while (classAPrivate===randomIp || classBPrivate===randomIp || classCPrivate===randomIp || thisNetwork===randomIp || loopback===randomIp || broadcast1===randomIp || broadcast2===randomIp)


    puts randomIp

  end  
end

