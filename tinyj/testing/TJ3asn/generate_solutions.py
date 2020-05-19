import subprocess

for i in range(16):
    subprocess.run(f'java -cp "TJ1solclasses;." TJasn.TJ CS316ex{i}.java testing\\TJ3asn\\solutions\\{i}.sol', input=bytes('y\n-1\n', 'UTF-8'))