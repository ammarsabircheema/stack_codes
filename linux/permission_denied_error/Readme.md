## The user is trying to compile following code:
The original question is [here](https://stackoverflow.com/questions/52566663/permissionerror-errno-13-permission-denied-while-running-a-server-side-cgi-sc/52566891#52566891).
```
import os,sys
from http.server import HTTPServer, CGIHTTPRequestHandler

webdir = '.'
port = 80       #default http://localhost/, else use http://localhost:xxxx/

os.chdir(webdir)
srvraddr  = ("",port)
srvrobj = HTTPServer(srvraddr,CGIHTTPRequestHandler)
srvrobj.serve_forever()
```

## But is getting following problem:

```
Traceback (most recent call last):
  File "webserver.py", line 16, in <module>
    srvrobj = HTTPServer(srvraddr,CGIHTTPRequestHandler)
  File "/usr/local/Cellar/python/3.7.0/Frameworks/Python.framework/Versions/3.7/lib/python3.7/socketserver.py", line 449, in __init__
    self.server_bind()
  File "/usr/local/Cellar/python/3.7.0/Frameworks/Python.framework/Versions/3.7/lib/python3.7/http/server.py", line 137, in server_bind
    socketserver.TCPServer.server_bind(self)
  File "/usr/local/Cellar/python/3.7.0/Frameworks/Python.framework/Versions/3.7/lib/python3.7/socketserver.py", line 463, in server_bind
    self.socket.bind(self.server_address)
PermissionError: [Errno 13] Permission denied
```


