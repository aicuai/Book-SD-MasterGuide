# build.py
import subprocess
subprocess.run(["pip", "install", "-r", "requirements.txt"], check=True)
subprocess.run(["mkdocs", "build", "-d", "public"], check=True)
