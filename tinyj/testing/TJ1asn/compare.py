import filecmp

mismatch = False

for i in range(16):
    if not filecmp.cmp(f'testing\\TJ1asn\\solutions\\{i}.sol',
                       f'testing\\TJ1asn\\attempts\\{i}.out',
                       shallow=False):
        mismatch = True
        print(f'Mismatch in example {i}')

if not mismatch:
    print('All good!')