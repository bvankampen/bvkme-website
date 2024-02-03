from app import app  # type: ignore
from flask import render_template, request # type: ignore
import requests
import datetime

@app.route('/proxy/<entry>/<uid>/<key>')
def proxy(entry = None, uid = 0, key = 0):
    entries= app.config['PROXY_ENTRIES']
    if entry:
        if entry in entries:            
            url = entries[entry]
            response = requests.get(f"{url}/?uid={uid}&key={key}")
            print(f"{datetime.datetime.now()} - {response.status_code} - {url}/?uid={uid}&key={key}")
            if response.status_code == 200:
                return response.text
            else:
                return "error"
        else:
            return "Error"
    return "Error"