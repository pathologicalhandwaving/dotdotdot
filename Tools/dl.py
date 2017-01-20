#!/usr/bin python3

import urllib3
import io
import shutil
import requests
import certifi

urllib3.disable_warnings()


path = "/Users/Em/Glossaries/out.txt"

url = "https://www.rfc-editor.org/rfc/rfc7986.txt"


http = urllib3.PoolManager(ca_certs='~/Users/Em/Tools/certs.pem', cert_reqs = 'CERT_REQUIRED', ca_cert_dir = '/Users/Em/Tools/')


with http.request('GET', url, preload_content=False) as r, open(path, 'wb') as out_file:
    shutil.copyfileobj(r, out_file)
    out_file.write('out.txt')

r.release_conn()
