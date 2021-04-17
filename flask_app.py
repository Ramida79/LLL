#!/usr/bin/python3


from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
import os




 #init app
app = Flask(__name__)


SQLALCHEMY_DATABASE_URI = "mysql+myslconnector://{username}:{password}@h{hostname}/{databasename}".format(
    username="juzegk",
    password="7914",
    hostname="juzeg.mysql.pythonanywhere-services.com",
    databasename="juzegk$IPZ"
)


app.config["SQLALCHEMY_DATABASE_URI"] = SQLALCHEMY_DATABASE_URI
app.config["SQlALCHEMY_POOL_RECYCLE"] = 299 
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False




db = SQLAlchemy(app)
ma = Marshmallow(app)



class Skan(db.Model):
    __tablename__ = "skan"
    id = db.Column(db.Integer,primary_key=True)
    nazwa = db.Column(db.Text)
    skan =  db.Column(db.Integer)

    def __init__(self,nazwa,skan):
        self.nazwa = nazwa
        self.skan = skan

class SkanSchema(ma.Schema):
    class Meta:
        fields = ('id','nazwa','skan')

skan_schema = SkanSchema()
skany_schema = SkanSchema(many = True)

@app.route('/skan',methods=['POST'])
def POST_skan():
    nazwa = request.json['nazwa']
    skan = request.json['skan']

    new_skan = Skan(nazwa , skan)

    db.session.add(new_skan)
    db.session.commit()

    return skan_schema.jsonify(new_skan)


@app.route('/', methods=['GET'])
def get():
    return jsonify({'msg':'Hello there!'})

#run server
if __name__ == '__main__':
    app.run(debug=True)

