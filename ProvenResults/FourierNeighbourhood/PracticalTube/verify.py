"""Regenerate and replay the integer Fourier-family tube certificate.

This is a full search, not a validation of printed PASS lines. A proved
transpose-stability estimate covers the other orientation. No reconstruction
files or published tables are read.
"""
from datetime import datetime, timezone
from fractions import Fraction
from pathlib import Path
import argparse
import hashlib
import json
import os
import re
import shutil
import struct
import subprocess
import tempfile
import time

from flint import arb, ctx

HERE = Path(__file__).resolve().parent


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def table(path):
    ctx.prec = 100
    length, scale = 218880, 1 << 26
    out = bytearray(struct.pack('<II', length, scale))
    for k in range(length):
        angle = 2 * arb.pi() * k / length
        for value in (angle.cos(), angle.sin()):
            proposal = round(float((value * scale).mid()))
            assert abs(value * scale - proposal) < 1
            out.extend(struct.pack('<i', proposal))
    path.write_bytes(out)
    return sha(path)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir', type=Path)
    parser.add_argument('--resume', action='store_true',
                        help='Resume completed parameter rows from this verifier’s matching checkpoint.')
    args = parser.parse_args()
    if args.resume and args.output_dir is None:
        parser.error('--resume requires --output-dir')
    started = time.monotonic()
    with tempfile.TemporaryDirectory(prefix='fourier-practical-tube-') as temp:
        work = Path(temp)
        output = args.output_dir.resolve() if args.output_dir else work / 'receipt'
        output.mkdir(parents=True, exist_ok=True)
        inputs = {name: sha(HERE / name) for name in
                  ('verify.py', 'tube.cpp', 'domain_audit.py')}
        assert Fraction(15, 16384) < Fraction(1, 1000)
        assert Fraction(31, 32) ** 2 < Fraction(63, 64)
        assert Fraction(128, 21) < Fraction(25, 4)
        assert Fraction(5, 2) ** 2 > 6 and Fraction(11, 2) ** 2 > 30
        assert Fraction(5, 2) / 8 + Fraction(11, 2) < 6
        domain = subprocess.run(
            [os.sys.executable, '-B', str(HERE / 'domain_audit.py')],
            text=True, capture_output=True, check=True)
        (output / 'domain.txt').write_text(domain.stdout)
        print(domain.stdout, end='', flush=True)
        trig = work / 'trig.bin'
        trig_sha = table(trig)
        print('PASS: 437760 outward trigonometric bounds; table', trig_sha, flush=True)
        checkpoint = output / 'inputs.json'
        mathematical_inputs = {name: inputs[name] for name in ('tube.cpp', 'domain_audit.py')}
        if args.resume:
            prior = json.loads(checkpoint.read_text())
            assert prior['proof_source_sha256'] == mathematical_inputs
            assert prior['trig_sha256'] == trig_sha
        else:
            checkpoint.write_text(json.dumps(dict(proof_source_sha256=mathematical_inputs,
                                                  trig_sha256=trig_sha), indent=2) + '\n')
        compiler = shutil.which(os.environ.get('CXX', 'c++'))
        if compiler is None:
            raise RuntimeError('A C++17 compiler is required')
        binary = work / 'tube'
        command = [compiler, '-std=c++17', '-O3', str(HERE / 'tube.cpp'), '-o', str(binary)]
        subprocess.run(command, check=True)
        pattern = re.compile(r'CELL (\d+) (\d+) (\d+) labels (\d+) cliques (\d+) '
                             r'max_good (\d+) result 1 tests (\d+)')
        expected = {(a, b) for a in range(30) for b in range(a // 2 + 2)}
        assert len(expected) == 270

        def run(orientation):
            log = output / f'orientation_{orientation}.txt'
            start_a = 0
            reused_cells = 0
            prefix = ''
            previous_sha = None
            if args.resume and log.exists():
                previous = log.read_text()
                records = list(pattern.finditer(previous))
                old = [tuple(map(int, match.groups())) for match in records]
                assert all(row[0] == orientation for row in old)
                keys = {(row[1], row[2]) for row in old}
                assert len(keys) == len(old) and keys <= expected
                while start_a < 30 and all((start_a, b) in keys for b in range(start_a // 2 + 2)):
                    start_a += 1
                kept = [match.group(0) for match in records if int(match.group(2)) < start_a]
                reused_cells = len(kept)
                previous_sha = sha(log)
                history = output / ('checkpoint_' + str(orientation) + '_' + previous_sha[:12] + '.txt')
                history.write_text(previous)
                prefix = 'REUSED completed parameter rows from ' + history.name + '\n'
                prefix += '\n'.join(kept) + ('\n' if kept else '')
                print(f'Resume orientation {orientation}: retain {reused_cells} cells; start A={start_a}', flush=True)
            cmd = [str(binary), str(trig), str(orientation), str(start_a), '30', '-1']
            began = time.monotonic()
            with log.open('w') as handle:
                handle.write(prefix)
                handle.flush()
                result = subprocess.run(cmd, stdout=handle, stderr=subprocess.STDOUT)
            text = log.read_text()
            assert result.returncode == 0, text[-4000:]
            assert text.endswith('PASS\n') and 'INCONCLUSIVE' not in text
            assert 'ORTH 82630 shifted 322040\n' in text
            rows = [tuple(map(int, match)) for match in pattern.findall(text)]
            assert len(rows) == 270
            assert {(row[1], row[2]) for row in rows} == expected
            assert all(row[0] == orientation for row in rows)
            stats = dict(orientation=orientation, cells=len(rows),
                         candidate_labels_min=min(row[3] for row in rows),
                         candidate_labels_max=max(row[3] for row in rows),
                         C_cliques=sum(row[4] for row in rows),
                         max_retained_D_labels=max(row[5] for row in rows),
                         scalar_tests_last_segment=rows[-1][6], log=log.name,
                         reused_cells=reused_cells, checkpoint_sha256=previous_sha,
                         log_sha256=sha(log),
                         elapsed_seconds=round(time.monotonic() - began, 3))
            print('PASS:', json.dumps(stats), flush=True)
            return stats

        print('Starting full integer search: 270 cells; transpose covered analytically', flush=True)
        runs = [run(0)]
        report = dict(status='PASS', completed_at_utc=datetime.now(timezone.utc).isoformat(),
                      radius='1/16384', raw_amplitude_tolerance='1/1000',
                      cells=270, transpose='analytic stability factor < 5/2',
                      source_sha256=inputs, trig_sha256=trig_sha,
                      binary_sha256=sha(binary), compiler=compiler,
                      compiler_version=subprocess.check_output([compiler, '--version'], text=True),
                      compile_flags=['-std=c++17', '-O3'], orientations=runs,
                      elapsed_seconds=round(time.monotonic() - started, 3),
                      scope='Whole Fourier-family matrix tube and transpose. '
                            'No seed lifting, T1 threshold, or global four-MUB exclusion.')
        (output / 'summary.json').write_text(json.dumps(report, indent=2) + '\n')
        print(json.dumps(report, indent=2), flush=True)
        print('PASS: d_Four(U) > 1/16384 for every quartet edge', flush=True)


if __name__ == '__main__':
    main()
