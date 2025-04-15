import subprocess
import shutil
import os

print("📦 Cleaning build directories...")

# Clean local public/
if os.path.exists("public"):
    print("🧹 Removing local public/")
    shutil.rmtree("public")

# MkDocs build
print("🔧 Installing dependencies...")
subprocess.run(["pip", "install", "-r", "requirements.txt"], check=True)

print("🏗 Building mkdocs...")
subprocess.run(["mkdocs", "build", "-d", "public"], check=True)

# Check result
print("📁 public/ contains:", os.listdir("public"))

# Ensure /vercel/output/static/ exists and is clean
output_path = "/vercel/output/static"
print(f"📤 Copying to {output_path}")
if os.path.exists(output_path):
    shutil.rmtree(output_path)

shutil.copytree("public", output_path)

print("✅ Done! Output now in /vercel/output/static:")
print(os.listdir(output_path))
print("🚀 Ready for deployment!")
