#!/usr/bin/python3


from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os




 #init app
app = Flask(__name__)


SQLALCHEMY_DATABASE_URI = "mysql+myslconnector://{username}:{password}@h{hostname}/{databasename}".format(
    username="juzegk",
    Password="7914",
    hostname="juzeg.mysql.pythonanywhere-services.com",
    databasename="juzegk$IPZ"
)

db = SQLAlchemy(app)
ma = Marshmallow(app)



app.config["SQLALCHEMY_DATABASE_URI"] = SQLALCHEMY_DATABASE_URI
app.config["SQlALCHEMY_POOL_RECYCLE"] = 299 
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

class Skan(db.Model):
    __tablename__ = "skan"
    nazwa = db.Column(db.Text)
    skan =  db.Column(db.Integer(11))

    def __init__(self,nazwa,skan):
        self.nazwa = nazwa
        self.skan = skan

@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello there!'})

#run server
if __name__ == '__main__':
    app.run(debug=True)

