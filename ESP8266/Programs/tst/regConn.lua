sk=net.createConnection(net.TCP, 0) 
sk:on("receive", handleHTTP)
sk:on("connection", function(sck) 
    print("GET /iot/public_api.php?task=moduleReg&name="..name.."&IP="..ip.."&token="..token.." ")
    conn:send("GET /iot/public_api.php?task=moduleReg&name="..name.."&IP="..ip.."&token="..token.." ")
    conn:send("Host: ESP8266\r\n")  
    conn:send("Accept: */*\r\n") 
    conn:send("User-Agent: Mozilla/4.0\r\n") 
    conn:send("\r\n")   
  end) 
sk:connect(80,"192.168.0.8")
print("regoConn.lua")
