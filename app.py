import hashlib
import subprocess

def hash_password(password):
    return hashlib.md5(password.encode()).hexdigest()

def run_command(cmd):
    return subprocess.call(cmd, shell=True)

print(hash_password("student123"))
run_command("ls")
