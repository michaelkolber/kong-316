import subprocess

for i in range(16):
    subprocess.run(f'java -cp "TJ1solclasses;." TJ1asn.TJ CS316ex{i}.java testing\\TJ1asn\\solutions\\{i}.sol')