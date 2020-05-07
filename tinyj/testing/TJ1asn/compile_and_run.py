import subprocess

subprocess.run('javac -cp . TJ1asn/Parser.java')

for i in range(16):
    completedproc = subprocess.run(f'java -cp . TJ1asn.TJ CS316ex{i}.java testing\\TJ1asn\\attempts\\{i}.out')
    print()
    print('|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||')
    print('||||| Press Enter to continue to the next code example... |||||')
    input('|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||')
    print()