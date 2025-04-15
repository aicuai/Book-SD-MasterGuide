import subprocess
import shutil
import os

print("📦 Cleaning existing build directories...")

# Clean local public/
if os.path.exists("public"):
    print("🧹 Removing local public/ directory")
    shutil.rmtree("public")

# Clean Vercel output/static
output_path = "/vercel/output/static"
if os.path.exists(output_path):
    print("🧹 Removing /vercel/output/static")
    shutil.rmtree(output_path)

print("🔧 Installing requirements...")
subprocess.run(["pip", "install", "-r", "requirements.txt"], check=True)

print("🛠 Building MkDocs site...")
subprocess.run(["mkdocs", "build", "-d", "public"], check=True)

print("📁 Contents of public/:")
print(os.listdir("public"))

print(f"📤 Copying public/ → {output_path}")
shutil.copytree("public", output_path)

print("✅ Copy complete! Contents of /vercel/output/static:")
print(os.listdir(output_path))
