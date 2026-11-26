local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1
L0_1 = require
L1_1 = "socket"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "json"
L1_1 = L1_1(L2_1)
L2_1 = require
L3_1 = "Utils.Toolbox"
L2_1 = L2_1(L3_1)
L3_1 = require
L4_1 = "Utils.base64"
L3_1 = L3_1(L4_1)
L4_1 = {}
L5_1 = "int"
L6_1 = "12"
L7_1 = "float"
L8_1 = "23"
L9_1 = "bool"
L10_1 = "2014"
L11_1 = "string"
L4_1[1] = L5_1
L4_1[2] = L6_1
L4_1[3] = L7_1
L4_1[4] = L8_1
L4_1[5] = L9_1
L4_1[6] = L10_1
L4_1[7] = L11_1
L5_1 = L4_1[3]
L6_1 = L4_1[1]
L7_1 = L4_1[6]
L8_1 = L4_1[2]
L9_1 = L4_1[5]
L10_1 = L4_1[4]
L11_1 = L4_1[7]
L5_1 = L5_1 .. L6_1 .. L7_1 .. L8_1 .. L9_1 .. L10_1 .. L11_1
L6_1 = {}

function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  if not A0_2 then
    L1_2 = {}
    A0_2 = L1_2
  end
  L1_2 = A0_2.server
  if L1_2 then
    L1_2 = A0_2.port
    if L1_2 then
      goto lbl_16
    end
  end
  L1_2 = print
  L2_2 = "Noobhub requires server and port to be specified"
  L1_2(L2_2)
  L1_2 = nil
  do return L1_2 end
  ::lbl_16::
  L1_2 = {}
  L2_2 = {}
  L1_2.channels = L2_2
  L1_2.buffer = ""
  L2_2 = A0_2.server
  L1_2.server = L2_2
  L2_2 = A0_2.port
  L1_2.port = L2_2
  L1_2.reconnectCounter = 0
  
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = log3
    L3_3 = "hub/subscribe: channel="
    L4_3 = A1_3.channel
    L2_3(L3_3, L4_3)
    L2_3 = A0_3.channels
    L3_3 = A1_3.channel
    L4_3 = A1_3.channel
    L2_3[L3_3] = L4_3
    L2_3 = A1_3.callback
    if not L2_3 then
      function L2_3()
        local L0_4, L1_4
      end
    end
    A0_3.callback = L2_3
    L2_3 = A0_3.sock
    if L2_3 == nil then
      L2_3 = A0_3.reconnectCounter
      if L2_3 < 3 then
        L2_3 = log3
        L3_3 = " reconnectCounter is < 3 "
        L2_3(L3_3)
        L2_3 = A0_3.reconnectCounter
        L2_3 = L2_3 + 1
        A0_3.reconnectCounter = L2_3
        L3_3 = A0_3
        L2_3 = A0_3.reconnect
        L2_3(L3_3)
      else
        L2_3 = log3
        L3_3 = "reconnectCounter is > 3 "
        L2_3(L3_3)
        L2_3 = true
        return L2_3
      end
    end
    L2_3 = L0_1
    L2_3 = L2_3.select
    L3_3 = nil
    L4_3 = {}
    L5_3 = A0_3.sock
    L4_3[1] = L5_3
    L5_3 = 3
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3)
    L4_3 = "__SUBSCRIBE__"
    L5_3 = L3_1
    L5_3 = L5_3.encode
    L6_3 = L2_1
    L6_3 = L6_3.xorEncryptWithKey
    L7_3 = L3_1
    L7_3 = L7_3.encode
    L8_3 = A1_3.channel
    L7_3 = L7_3(L8_3)
    L8_3 = L5_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3)
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = "__ENDSUBSCRIBE__"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L5_3 = ipairs
    L6_3 = L3_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L11_3 = L9_3
      L10_3 = L9_3.send
      L12_3 = L4_3
      L10_3(L11_3, L12_3)
    end
    L5_3 = true
    return L5_3
  end
  
  L1_2.subscribe = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3
    L1_3 = log3
    L2_3 = "hub/unsubscribe: called, we are going to close the connection socket"
    L1_3(L2_3)
    L1_3 = A0_3.sock
    if L1_3 then
      L1_3 = A0_3.sock
      L2_3 = L1_3
      L1_3 = L1_3.close
      L1_3(L2_3)
      L1_3 = log3
      L2_3 = "UNSUBSCRIBE called, sock.close() called"
      L1_3(L2_3)
      A0_3.sock = nil
    end
    A0_3.buffer = ""
  end
  
  L1_2.unsubscribe = L2_2
  
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = log3
    L1_3()
    L1_3 = A0_3.channels
    if L1_3 then
      L1_3 = A0_3.callback
      if L1_3 then
        goto lbl_11
      end
    end
    L1_3 = false
    do return L1_3 end
    ::lbl_11::
    L1_3 = print
    L2_3 = "hub/reconnect: attempt to reconnect..."
    L1_3(L2_3)
    L1_3 = A0_3.reconnectTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.reconnectTimer
      L1_3(L2_3)
    end
    L1_3 = A0_3.sock
    if L1_3 == nil then
      L2_3 = A0_3
      L1_3 = A0_3.unsubscribe
      L1_3(L2_3)
      L2_3 = A0_3
      L1_3 = A0_3.socketConnect
      L1_3(L2_3)
      L1_3 = pairs
      L2_3 = A0_3.channels
      L1_3, L2_3, L3_3 = L1_3(L2_3)
      for L4_3, L5_3 in L1_3, L2_3, L3_3 do
        L7_3 = A0_3
        L6_3 = A0_3.subscribe
        L8_3 = {}
        L8_3.channel = L5_3
        L9_3 = A0_3.callback
        L8_3.callback = L9_3
        L6_3(L7_3, L8_3)
      end
    end
    L1_3 = true
    return L1_3
  end
  
  L1_2.reconnect = L2_2
  L2_2 = 3
  
  function L3_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = log3
    L3_3()
    L3_3 = A2_3 or L3_3
    if not A2_3 then
      L3_3 = 0
    end
    L4_3 = L2_2
    if L3_3 > L4_3 then
      L4_3 = log3
      L5_3 = "hub/publish return false"
      L4_3(L5_3)
      L4_3 = false
      return L4_3
    end
    L4_3 = A0_3.sock
    if L4_3 == nil then
      L4_3 = print
      L5_3 = "hub/publish: Attempt to publish without valid subscription (bad socket), Retry count: "
      L6_3 = L3_3
      L4_3(L5_3, L6_3)
      L5_3 = A0_3
      L4_3 = A0_3.reconnect
      L4_3(L5_3)
      L5_3 = A0_3
      L4_3 = A0_3.publish
      L6_3 = A1_3
      L7_3 = L3_3 + 1
      return L4_3(L5_3, L6_3, L7_3)
    end
    L4_3 = log3
    L5_3 = "hub/publish: message="
    L6_3 = L1_1
    L6_3 = L6_3.encode
    L7_3 = A1_3.message
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3(L7_3)
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L4_3 = "__JSON__START__"
    L5_3 = L3_1
    L5_3 = L5_3.encode
    L6_3 = L2_1
    L6_3 = L6_3.xorEncryptWithKey
    L7_3 = L3_1
    L7_3 = L7_3.encode
    L8_3 = L1_1
    L8_3 = L8_3.encode
    L9_3 = A1_3.message
    L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L8_3(L9_3)
    L7_3 = L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L8_3 = L5_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3(L7_3, L8_3)
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L6_3 = "__JSON__END__"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L5_3 = A0_3.sock
    L6_3 = L5_3
    L5_3 = L5_3.send
    L7_3 = L4_3
    L5_3, L6_3, L7_3 = L5_3(L6_3, L7_3)
    if L5_3 == nil then
      L8_3 = print
      L9_3 = "hub/publish: error: "
      L10_3 = L6_3
      L11_3 = "  sent "
      L12_3 = L7_3
      L13_3 = " bytes"
      L9_3 = L9_3 .. L10_3 .. L11_3 .. L12_3 .. L13_3
      L8_3(L9_3)
      if L6_3 == "closed" then
        L9_3 = A0_3
        L8_3 = A0_3.reconnect
        L8_3(L9_3)
        L9_3 = A0_3
        L8_3 = A0_3.publish
        L10_3 = A1_3
        L11_3 = L3_3 + 1
        return L8_3(L9_3, L10_3, L11_3)
      end
      L8_3 = false
      return L8_3
    end
    L8_3 = true
    return L8_3
  end
  
  L1_2.publish = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L1_3()
    L1_3 = L0_1
    L1_3 = L1_3.connect
    L2_3 = A0_3.server
    L3_3 = A0_3.port
    L1_3, L2_3 = L1_3(L2_3, L3_3)
    error_message = L2_3
    A0_3.sock = L1_3
    L1_3 = A0_3.sock
    if L1_3 == nil then
      L1_3 = print
      L2_3 = "hub/connect: connection error: "
      L3_3 = error_message
      L2_3 = L2_3 .. L3_3
      L1_3(L2_3)
      L1_3 = print
      L2_3 = "hub/connect: Problems with server..?"
      L1_3(L2_3)
      L1_3 = false
      return L1_3
    end
    L1_3 = A0_3.reconnectTimer
    if L1_3 then
      L1_3 = timer
      L1_3 = L1_3.cancel
      L2_3 = A0_3.reconnectTimer
      L1_3(L2_3)
    end
    L1_3 = A0_3.sock
    L2_3 = L1_3
    L1_3 = L1_3.setoption
    L3_3 = "tcp-nodelay"
    L4_3 = true
    L1_3(L2_3, L3_3, L4_3)
    L1_3 = A0_3.sock
    L2_3 = L1_3
    L1_3 = L1_3.settimeout
    L3_3 = 0
    L1_3(L2_3, L3_3)
  end
  
  L1_2.socketConnect = L3_2
  
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = log3
    L3_3 = "hub/unsubscribeChannel"
    L4_3 = A1_3
    L3_3 = L3_3 .. L4_3
    L2_3(L3_3)
    L2_3 = A0_3.channels
    L2_3[A1_3] = nil
    L2_3 = A0_3.sock
    if L2_3 == nil then
      L2_3 = A0_3.reconnectCounter
      if L2_3 < 3 then
        L2_3 = log3
        L3_3 = " reconnectCounter is < 3 "
        L2_3(L3_3)
        L2_3 = A0_3.reconnectCounter
        L2_3 = L2_3 + 1
        A0_3.reconnectCounter = L2_3
        L3_3 = A0_3
        L2_3 = A0_3.reconnect
        L2_3(L3_3)
      else
        L2_3 = log3
        L3_3 = "reconnectCounter is > 3 "
        L2_3(L3_3)
        L2_3 = true
        return L2_3
      end
    end
    L2_3 = L0_1
    L2_3 = L2_3.select
    L3_3 = nil
    L4_3 = {}
    L5_3 = A0_3.sock
    L4_3[1] = L5_3
    L5_3 = 3
    L2_3, L3_3 = L2_3(L3_3, L4_3, L5_3)
    L4_3 = "__UNSUBSCRIBE__"
    L5_3 = L3_1
    L5_3 = L5_3.encode
    L6_3 = L2_1
    L6_3 = L6_3.xorEncryptWithKey
    L7_3 = L3_1
    L7_3 = L7_3.encode
    L8_3 = A1_3
    L7_3 = L7_3(L8_3)
    L8_3 = L5_1
    L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3 = L6_3(L7_3, L8_3)
    L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L6_3 = "__ENDUNSUBSCRIBE__"
    L4_3 = L4_3 .. L5_3 .. L6_3
    L5_3 = ipairs
    L6_3 = L3_3
    L5_3, L6_3, L7_3 = L5_3(L6_3)
    for L8_3, L9_3 in L5_3, L6_3, L7_3 do
      L11_3 = L9_3
      L10_3 = L9_3.send
      L12_3 = L4_3
      L10_3(L11_3, L12_3)
    end
    L5_3 = true
    return L5_3
  end
  
  L1_2.unsubscribeChannel = L3_2
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L1_3 = L0_1
    L1_3 = L1_3.select
    L2_3 = {}
    L3_3 = A0_3.sock
    L2_3[1] = L3_3
    L3_3 = nil
    L4_3 = 0
    L1_3, L2_3 = L1_3(L2_3, L3_3, L4_3)
    L3_3 = ipairs
    L4_3 = L1_3
    L3_3, L4_3, L5_3 = L3_3(L4_3)
    for L6_3, L7_3 in L3_3, L4_3, L5_3 do
      L8_3 = false
      while "skt" do
        L10_3 = L7_3
        L9_3 = L7_3.receive
        L9_3, L10_3, L11_3 = L9_3(L10_3)
        p = L11_3
        e = L10_3
        skt = L9_3
        L9_3 = skt
        if L9_3 then
          L9_3 = A0_3.buffer
          L10_3 = skt
          L9_3 = L9_3 .. L10_3
          A0_3.buffer = L9_3
          L8_3 = true
        end
        L9_3 = p
        if L9_3 then
          L9_3 = A0_3.buffer
          L10_3 = p
          L9_3 = L9_3 .. L10_3
          A0_3.buffer = L9_3
          L8_3 = true
        end
        L9_3 = skt
        if not L9_3 then
          break
        end
        L9_3 = e
        if L9_3 then
          break
        end
      end
      while L8_3 do
        L9_3 = string
        L9_3 = L9_3.find
        L10_3 = A0_3.buffer
        L11_3 = "__JSON__START__"
        L9_3 = L9_3(L10_3, L11_3)
        L10_3 = string
        L10_3 = L10_3.find
        L11_3 = A0_3.buffer
        L12_3 = "__JSON__END__"
        L10_3 = L10_3(L11_3, L12_3)
        if L9_3 and L10_3 then
          L11_3 = string
          L11_3 = L11_3.sub
          L12_3 = A0_3.buffer
          L13_3 = L9_3 + 15
          L14_3 = L10_3 - 1
          L11_3 = L11_3(L12_3, L13_3, L14_3)
          L12_3 = L3_1
          L12_3 = L12_3.decode
          L13_3 = L2_1
          L13_3 = L13_3.xorDecryptWithKey
          L14_3 = L3_1
          L14_3 = L14_3.decode
          L15_3 = L11_3
          L14_3 = L14_3(L15_3)
          L15_3 = L5_1
          L13_3, L14_3, L15_3 = L13_3(L14_3, L15_3)
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L11_3 = L12_3
          L12_3 = string
          L12_3 = L12_3.sub
          L13_3 = A0_3.buffer
          L14_3 = 1
          L15_3 = L9_3 - 1
          L12_3 = L12_3(L13_3, L14_3, L15_3)
          L13_3 = string
          L13_3 = L13_3.sub
          L14_3 = A0_3.buffer
          L15_3 = L10_3 + 13
          L13_3 = L13_3(L14_3, L15_3)
          L12_3 = L12_3 .. L13_3
          A0_3.buffer = L12_3
          L12_3 = L1_1
          L12_3 = L12_3.decode
          L13_3 = L11_3
          L12_3 = L12_3(L13_3)
          L13_3 = A0_3.callback
          L14_3 = L12_3
          L13_3(L14_3)
        else
          break
        end
      end
    end
  end
  
  L1_2.enterFrame = L3_2
  L4_2 = L1_2
  L3_2 = L1_2.socketConnect
  L3_2(L4_2)
  L3_2 = Runtime
  L4_2 = L3_2
  L3_2 = L3_2.addEventListener
  L5_2 = "enterFrame"
  L6_2 = L1_2
  L3_2(L4_2, L5_2, L6_2)
  
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    L1_3 = log3
    L1_3()
    L1_3 = Runtime
    L2_3 = L1_3
    L1_3 = L1_3.removeEventListener
    L3_3 = "enterFrame"
    L4_3 = A0_3
    L1_3(L2_3, L3_3, L4_3)
    L2_3 = A0_3
    L1_3 = A0_3.unsubscribe
    L1_3(L2_3)
    L1_3 = {}
    A0_3.channels = L1_3
    A0_3.reconnectCounter = 0
  end
  
  L1_2.removeHub = L3_2
  return L1_2
end

L6_1.new = L7_1
noobhub = L6_1
