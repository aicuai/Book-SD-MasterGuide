import subprocess
import shutil
import os

# Clean public/ directory if it exists
if os.path.exists("public"):
    shutil.rmtree("public")

# Install Python dependencies
subprocess.run(["pip", "install", "-r", "requirements.txt"], check=True)

# Build MkDocs site into public/
subprocess.run(["mkdocs", "build", "-d", "public"], check=True)
