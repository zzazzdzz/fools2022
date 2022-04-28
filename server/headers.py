from config import SERVER_HEADER

HEADERS_CORS = [
    ('Access-Control-Allow-Origin', '*'),
    ('Access-Control-Allow-Methods', 'POST, GET, OPTIONS'),
    ('Access-Control-Allow-Headers', 'X-FoolsSessionToken'),
    ('Access-Control-Expose-Headers', 'X-FoolsRefreshToken, X-FoolsProtocolVersion'),
    ('Access-Control-Max-Age', '7200')
]
HEADERS_HTML = [
    ('Content-Type', 'text/html')
]
HEADERS_TEXT = [
    ('Content-Type', 'text/plain')
]
HEADERS_JSON = [
    ('Content-Type', 'application/json')
]

def construct_headers(*hdrs):
    r = [
        ('Server', SERVER_HEADER),
        ('X-FoolsDisclaimer', 'Planning to send automated requests? Please take a look at https://fools2022.online/automation/'),
        ('Content-Security-Policy', "frame-ancestors 'none'; default-src 'self'"),
        ('Cache-Control', 'no-cache, no-store')
    ]
    for l in hdrs:
        for kv in l:
            if kv not in r:
                r.append(kv)
    return r
