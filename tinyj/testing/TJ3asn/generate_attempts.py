import subprocess

for i in range(16):
    subprocess.run(f'java -cp . TJasn.TJ CS316ex{i}.java testing\\TJ3asn\\attempts\\{i}.out', input=bytes('y\n-1\n', 'UTF-8'))