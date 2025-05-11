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
cp ../otro_lugar/dataset.csv data/
dvc add data/dataset.csv

.gitignore .

git add .
git commit -m "Inicializo proyecto con Git y DVC, y agrego dataset"

git remote add origin https://github.com/TU_USUARIO/TU_REPO.git
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




