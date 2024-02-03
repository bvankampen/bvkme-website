from flask import Flask
import os

app = Flask(
    __name__,
    instance_relative_config=True,
    )

app.config.from_object('config')
app.config.from_pyfile('config.py')

from . import views
