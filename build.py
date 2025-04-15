import subprocess
import shutil
import os

# Clean local public/ if exists
if os.path.exists("public"):
    shutil.rmtree("public")

# Build mkdocs into local public/
subprocess.run(["pip", "install", "-r", "requirements.txt"], check=True)
subprocess.run(["mkdocs", "build", "-d", "public"], check=True)

# Move output to /vercel/output/static
output_path = "/vercel/output/static"
if os.path.exists(output_path):
    shutil.rmtree(output_path)

shutil.copytree("public", output_path)
