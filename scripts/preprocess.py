import pandas as pd

# Leer el dataset original
df = pd.read_csv("data/titanic.csv")

# Simular un preprocesamiento: eliminar nulos
df_clean = df.dropna()

# Guardar archivo procesado
df_clean.to_csv("data/processed.csv", index=False)

print("Preprocesamiento completo: data/processed.csv generado.")
