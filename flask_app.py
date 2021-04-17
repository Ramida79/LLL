#!/usr/bin/python3


from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os




 #init app
app = Flask(__name__)


SQLALCHEMY_DATABASE_URI = "mysql+mysqlconnector://{username}:{password}@{hostname}/{databasename}".format(
        username="juzeg",
    password="ipzhaslo",
    hostname="localhost",
    databasename="IPZ",
    auth_plugin='mysql_native_password'
)


app.config["SQLALCHEMY_DATABASE_URI"] = SQLALCHEMY_DATABASE_URI
app.config["SQlALCHEMY_POOL_RECYCLE"] = 299 
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False




db = SQLAlchemy(app)
ma = Marshmallow(app)



class Skaner(db.Model):
    __tablename__ = "skaner"
    nazwa = db.Column(db.Text)
    skan =  db.Column(db.Integer)
    id = db.Column(db.Integer, primary_key=True)
    def __init__(self,nazwa,skan):
        self.nazwa = nazwa
        self.skan = skan

class SkanerSchema(ma.Schema):
    class Meta:
        fields = ('nazwa','skan','id')

skaner_schema = SkanerSchema()
skanery_schema = SkanerSchema(many = True)

@app.route('/skan',methods=['POST'])
def POST_skaner():
    nazwa = request.json['nazwa']
    skan = request.json['skan']

    new_skaner = Skaner(nazwa , skan)

    db.session.add(new_skaner)
    db.session.commit()

    return skaner_schema.jsonify(new_skaner)


@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello there!'})

#run server
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')


