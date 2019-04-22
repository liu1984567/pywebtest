#app.py

def application(environ, start_response):
    #print(environ)
    method = environ['REQUEST_METHOD']
    contenttype = environ['CONTENT_TYPE']
    pathinfo = environ['PATH_INFO']
    print(pathinfo)
    querystr = environ['QUERY_STRING']
    print(querystr)
    start_response('200 OK', [('Content-Type', 'text/html')])
    #deal login
    if pathinfo == '/login/':
        return [b'<h1>Welcome, please login first!</h1>']
    #default deal
    return [b'<h1>Hello, web!</h1>']
