# Proyecto de Prueba con DVC

Este repositorio es una prueba práctica para aprender a usar **DVC (Data Version Control)** junto con **Git**. DVC permite versionar archivos grandes como datasets y modelos, manteniendo el repositorio limpio y reproducible.

---

## 🚀 Paso a paso para empezar

### 1. Crear un nuevo proyecto en tu máquina

```bash
mkdir DVC
cd DVC

dvc init

mkdir data
cp ../data/titanic.csv data/
dvc add data/titanic.csv

.gitignore .

git add data/titanic.csv.dvc .gitignore .dvc/config
git commit -m "Agrego dataset con DVC"

git commit -m "Inicializo proyecto con Git y DVC, y agrego dataset"

git remote add origin
git branch -M main
git push -u origin main

DVC/
├── data/
│   └── dataset.csv         <- archivo real (ignorado por Git)
├── data/dataset.csv.dvc    <- metadatos versionados por Git
├── .dvc/                   <- configuración interna de DVC
├── dvc.yaml                <- definición de etapas (opcional)
├── dvc.lock                <- versiones bloqueadas (auto)
├── .gitignore
├── requirements.txt
└── README.md

Crear preprocess
----------------

mkdir scripts

Agrega prepocews.py

dvc stage add -n preprocess -d scripts/preprocess.py -d data/dataset.csv  -o data/processed.csv  python scripts/preprocess.py

dvc repro

git add dvc.yaml dvc.lock scripts/
git commit -m "Agrega etapa de preprocesamiento con DVC"

DVC/
├── data/
│   ├── dataset.csv
│   └── processed.csv       <- archivo generado
├── scripts/
│   └── preprocess.py
├── data/dataset.csv.dvc
├── dvc.yaml                <- etapa definida
├── dvc.lock                <- versión bloqueada
├── .dvc/
├── .gitignore
├── requirements.txt
└── README.md