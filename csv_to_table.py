import pandas as pd

# CSV dosyasını oku
csv_file = "survey.csv"  # CSV dosyanızın adı
df = pd.read_csv(csv_file)

# Sütun isimlerini ve veri türlerini çıkar
columns = []
for column_name, dtype in zip(df.columns, df.dtypes):
    # Veri tipine göre MySQL veri tipini belirle
    if "int" in str(dtype):
        mysql_type = "INT"
    elif "float" in str(dtype):
        mysql_type = "FLOAT"
    else:
        mysql_type = "VARCHAR(255)"  # Varsayılan olarak string
    columns.append(f"`{column_name}` {mysql_type}")

# CREATE TABLE sorgusunu oluştur
table_name = "my_table"
create_table_query = f"CREATE TABLE {table_name} (\n    {',\n    '.join(columns)}\n);"
print(create_table_query)
