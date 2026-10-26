"""Generate Z's complete centre-to-whole-ball Lean certificate.

Exact rational arithmetic validates proposals; only Lean's `decide +kernel`
certifies them. Use --check to build bounded groups with eight Lean threads
per process and record wall/CPU time and peak resident memory for each stage.
The final hC1 uses the input record's exact P, U, M, r and n, without grid rounding.
"""
import argparse
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys
import time

from wholeball_scalar import OUTPUT_ROOT, rational
from wholeball_jets import emit as emit_jets
from wholeball_fourier import emit as emit_fourier
from wholeball_sides import emit as emit_sides
from wholeball_matrix import frozen_normal_basis
from wholeball_shift import grid_seed, emit_shift

ROOT = Path(__file__).resolve().parents[2]
BASIS = ROOT / 'proof/seed_atlas/cert/wholeball_basis.json'


def modules(index, name, core_name=None):
    # Topological order prevents Lake from scheduling independent large
    # arithmetic certificates together, including on the initial build.
    core_name = core_name or name
    yield 'BasisNorm'
    yield 'BasisRegular'
    yield 'BasisGeometry'
    yield 'CheckedBall'
    if core_name != name:
        yield 'ShiftedBall'
    for stage in ('Centre', 'Gram', 'Jets'):
        yield f'{stage}{index}'
    yield f'Jets{index}Norms'
    yield f'Fourier{index}Data'
    yield core_name+'Data'
    for suffix in ('Centre', 'Sides', 'Record'):
        yield core_name+suffix
    for suffix in ('Cubic', 'Quartic', 'Mixed', 'Second', 'Normal'):
        if suffix in ('Cubic', 'Quartic', 'Second'):
            for part in ('Real', 'Imag'):
                yield f'Fourier{index}{suffix}{part}Data'
            for part in ('Real', 'Imag'):
                yield f'Fourier{index}{suffix}{part}Check'
            if suffix == 'Second':
                yield f'Fourier{index}SecondCompactData'
            if suffix in ('Quartic', 'Second'):
                yield f'Fourier{index}{suffix}Columns'
        yield f'Fourier{index}{suffix}'
    for suffix in ('TermNorms','CubicNorm','QuarticNorm','MixedNorm','SecondNorm','NormalNorm','Sums','Norms'):
        yield f'Fourier{index}{suffix}'
    yield f'Fourier{index}'
    yield core_name
    if core_name != name:
        yield name
    yield name+'Axioms'


def check(index, name, start_at=None, core_name=None):
    """Sequence bounded groups; preserve logs and machine-readable timings."""
    timing_path = OUTPUT_ROOT/(name+'Timings.json')
    previous = {item['module']: item for item in json.loads(timing_path.read_text())} if timing_path.exists() else {}
    order = list(modules(index, name, core_name))
    if start_at is not None and start_at not in order:
        raise ValueError('unknown resume module: '+start_at)
    timings = []
    env = dict(os.environ, LEAN_NUM_THREADS='8')
    for module in order:
        qualified = 'KernelAtlas.WholeBall.'+module
        if start_at is not None:
            if module != start_at:
                if qualified in previous:
                    timings.append(previous[qualified])
                continue
            start_at = None
        command = ['/usr/bin/time', '-l' if sys.platform == 'darwin' else '-v',
                   'lake', 'build', qualified]
        started = time.monotonic()
        completed = subprocess.run(command, cwd=ROOT/'lean', env=env,
                                   stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True)
        text = completed.stdout
        fresh = bool(re.search(r'(?:Built|Building) '+re.escape(qualified)+r'(?=\s|\()', text))
        digest = hashlib.sha256((OUTPUT_ROOT/(module+'.lean')).read_bytes()).hexdigest()
        item = dict(module=qualified, wall_seconds=time.monotonic()-started,
                    exit_code=completed.returncode, fresh_build=fresh, source_sha256=digest)
        prior = previous.get(qualified)
        retain = (not fresh and completed.returncode == 0 and prior and prior.get('fresh_build')
                  and prior.get('exit_code') == 0 and prior.get('source_sha256') == digest)
        if not retain:
            (OUTPUT_ROOT/(name+'-'+module+'.log')).write_text(text)
        if sys.platform == 'darwin':
            cpu = re.search(r'([\d.]+) real\s+([\d.]+) user\s+([\d.]+) sys', text)
            rss = re.search(r'(\d+)\s+maximum resident set size', text)
            if cpu:
                item.update(wall_seconds=float(cpu[1]), user_seconds=float(cpu[2]),
                            system_seconds=float(cpu[3]))
            if rss:
                item['peak_rss_bytes'] = int(rss[1])
        else:
            rss = re.search(r'Maximum resident set size \(kbytes\): (\d+)', text)
            if rss:
                item['peak_rss_bytes'] = 1024*int(rss[1])
        if retain:
            item = prior
        timings.append(item)
        timing_path.write_text(json.dumps(timings, indent=2)+'\n')
        print(json.dumps(item), flush=True)
        if module == name+'Axioms' and completed.returncode == 0:
            audits = re.findall(r'depends on axioms:\s*\[([^]]*)\]', text, re.S)
            if not audits:
                raise RuntimeError('concrete axiom audit produced no result')
            for audit in audits:
                used = {axiom.strip() for axiom in audit.split(',') if axiom.strip()}
                if not used <= {'propext', 'Classical.choice', 'Quot.sound'}:
                    raise RuntimeError(f'nonstandard axioms in {qualified}: {used}')
        if completed.returncode:
            raise RuntimeError(f'{qualified} failed; see its log in {OUTPUT_ROOT}')
    return timings


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('certificate', type=Path)
    parser.add_argument('index', type=int)
    parser.add_argument('--basis', type=Path, default=BASIS)
    parser.add_argument('--output', type=Path)
    parser.add_argument('--check', action='store_true')
    args = parser.parse_args()
    output = args.output or OUTPUT_ROOT/f'Ball{args.index}.lean'
    if output.resolve().parent != OUTPUT_ROOT.resolve() or output.suffix != '.lean' or not output.stem.isidentifier() or not output.stem.isascii():
        parser.error(f'output must be an ASCII Lean module directly in {OUTPUT_ROOT}')
    if frozen_normal_basis(args.basis) != frozen_normal_basis(BASIS):
        parser.error('the imported BasisNorm certificate requires the frozen basis exactly')
    opener = gzip.open if args.certificate.suffix == '.gz' else open
    with opener(args.certificate, 'rt') as stream:
        seeds = json.load(stream)['seeds']
    if not 0 <= args.index < len(seeds):
        parser.error('seed index out of range')
    seed = seeds[args.index]
    adjusted, shift = grid_seed(seed)
    core_name = output.stem+'Core' if shift is not None else output.stem
    core_output = output.with_name(core_name+'.lean')
    emit_jets(adjusted, args.index, args.basis, OUTPUT_ROOT/f'Jets{args.index}.lean')
    emit_fourier(adjusted, args.index, args.basis, OUTPUT_ROOT/f'Fourier{args.index}.lean')
    summary = emit_sides(adjusted, args.index, args.basis, core_output)
    if shift is not None:
        emit_shift(seed, args.index, shift, core_name, output)
    metadata = dict(index=args.index, atlas_count=len(seeds),
                    certificate=args.certificate.name,
                    certificate_sha256=hashlib.sha256(args.certificate.read_bytes()).hexdigest(),
                    seed_sha256=hashlib.sha256(json.dumps(seed, sort_keys=True, separators=(',', ':')).encode()).hexdigest(),
                    core_module=core_name, translated=shift is not None,
                    requested_radius=str(rational(seed['r'])),
                    certified_radius=str(rational(adjusted['r'])),
                    translation_norm_bound=str(shift['sigma']) if shift else '0',
                    **summary)
    metadata_path = output.with_name(output.stem+'Input.json')
    serialized = json.dumps(metadata, indent=2, sort_keys=True)+'\n'
    if metadata_path.exists() and metadata_path.read_text() != serialized:
        raise FileExistsError(f'refusing to overwrite different input metadata: {metadata_path}')
    metadata_path.write_text(serialized)
    print(json.dumps(metadata), flush=True)
    if args.check:
        check(args.index, output.stem, core_name=core_name)
        print(f'Kernel-checked {output.stem}.hC1 with LEAN_NUM_THREADS=8.', flush=True)


if __name__ == '__main__':
    main()
