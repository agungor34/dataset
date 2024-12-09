import pandas as pd
from sqlalchemy import create_engine
import os

with open('/run/secrets/db-password') as f:
    db_password = f.read().strip()

# CSV dosyasını oku
df = pd.read_csv('/etl/survey.csv',sep=',',lineterminator='\r')

# MySQL bağlantısı
engine = create_engine(f'mysql+pymysql://root:password@db:3306/flask_app')
# engine = create_engine(f'mysql+pymysql://root:{db_password}@db:3306/flask_app')
#engine = create_engine('mysql+pymysql://root:password@db:3306/flask_app')

# Verileri MySQL'e aktar
df.to_sql('my_table', con=engine, if_exists='append', index=False)





