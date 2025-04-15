import subprocess

subprocess.run(["mkdocs", "build", "-d", "public"], check=True)
