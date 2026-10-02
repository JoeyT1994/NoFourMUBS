"""Positive controls: exact Fourier/chirp MUB triples must survive rejection."""
from pathlib import Path
import hashlib
import os
import subprocess
import tempfile

from verify import table

HERE = Path(__file__).resolve().parent
with tempfile.TemporaryDirectory(prefix='fourier-tube-controls-') as temp:
    work = Path(temp)
    trig = work / 'trig.bin'
    table(trig)
    original = (HERE / 'tube.cpp').read_text()
    assert original.count('L/360') == 3
    for grid in (180, 360, 720):
        case = work / str(grid)
        case.mkdir()
        source = original if grid == 180 else original.replace('L/360', f'L/{2*grid}')
        (case / 'tube.cpp').write_text(source)
        (case / 'controls.cpp').write_text((HERE / 'controls.cpp').read_text())
        binary = case / 'controls'
        command = [os.environ.get('CXX', 'c++'), '-std=c++17', '-O2',
                   '-Wno-return-type', '-fsanitize=undefined',
                   '-fno-sanitize-recover=all', str(case / 'controls.cpp'),
                   '-o', str(binary)]
        subprocess.run(command, check=True)
        subprocess.run([str(binary), str(trig)], check=True)
        print('PASS: grid', grid, 'source', hashlib.sha256(source.encode()).hexdigest(), flush=True)

for name in ('tube.cpp', 'controls.cpp', 'verify_controls.py', 'verify.py'):
    print(hashlib.sha256((HERE / name).read_bytes()).hexdigest(), name)
