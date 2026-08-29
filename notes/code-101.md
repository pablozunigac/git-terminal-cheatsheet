Rscript -e "cat(R.version.string, '\n')"
brew upgrade r

---

python3 --version
brew upgrade python

---

tsc --version
npm install -g typescript@latest

---

Typescript

```bash
npm install typescript --save-dev
npx tsc --init
cat << 'EOF' > tsconfig.json
{
  "compilerOptions": {
    "target": "ES2022",
    "module": "NodeNext",
    "moduleResolution": "NodeNext",
    "esModuleInterop": true,
    "forceConsistentCasingInFileNames": true,
    "strict": true,
    "skipLibCheck": true,
    "erasableSyntaxOnly": true
  }
}
EOF
echo "const saludo: string = '¡Hola desde TypeScript nativo en mi Mac M1!'; console.log(saludo);" > index.ts
node --experimental-strip-types index.ts
```

---

# 1. Create a clean, isolated virtual environment named '.venv'
```bash
python3 -m venv .venv
```

# 2. Activate the virtual environment
```bash
source .venv/bin/activate
```

# 3. Upgrade package managers to their latest versions
```bash
pip install --upgrade pip setuptools wheel
```bash

# 4. Install production core (Data combo) and development tools (Testing)
```bash
pip install pandas polars pytest
```bash

# 5. Create a standard Python test file
```bash
cat << 'EOF' > test_app.py
import pandas as pd
def test_dataframe_logic():
    df = pd.DataFrame({"datos": [1, 2, 3]})
    assert df["datos"].sum() == 6
if __name__ == "__main__":
    print("¡Hola desde Python aislado en mi Mac M1!")
EOF
```

# 6. Execute the test suite using pytest
```bash
pytest test_app.py
```

# 7. Run the file directly
```bash
python test_app.py
```

---

# 1. Initialize a localized, isolated R project environment using renv
```bash
Rscript -e "if (!requireNamespace('renv', quietly=True)) install.packages('renv', repos='https://r-project.org'); renv::init(bare=TRUE)"
```

# 2. Install the missing data management library into the local environment
```bash
Rscript -e "renv::install('tidyr', repos='https://r-project.org')"
```

# 3. Create a strict, standard R test script

```bash
cat << 'EOF' > index.R
library(tidyr)
message("¡Hola desde R aislado en mi Mac M1!")
print(Sys.version_info())
EOF
```
# 4. Execute the R script safely from the terminal
```bash
Rscript index.R
```

# 5. Take a snapshot to lock package versions in renv.lock file
```bash
Rscript -e "renv::snapshot(prompt=FALSE)"
```
