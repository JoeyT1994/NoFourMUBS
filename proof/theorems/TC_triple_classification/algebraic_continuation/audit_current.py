"""Replay an original-ball algebraic exclusion with current Stage C checks.

The output .audit.json accompanies a freshly recomputed mathematical replay;
neither an old success label nor a hash check alone establishes a closure.
"""
import argparse
import gzip
import hashlib
import json
from pathlib import Path
import subprocess
import sys

from load_native import ROOT, R
sys.path.insert(0, str(ROOT/'TripleClassification/code'))
import stagec_guard as G

NATIVE = 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7'


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def validate_identity(row, record, index):
    if type(row.get('index')) is not int or row['index'] != index:
        raise ValueError('wrong original ball index')
    if row.get('radius_hex') != float.fromhex(record['r']).hex():
        raise ValueError('radius differs from original atlas')
    expected = hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()
    if row.get('seed_sha256') != expected:
        raise ValueError('seed record differs from original atlas')
    if row.get('status') != 'CERTIFIED EMPTY':
        raise ValueError('this audit requires complete algebraic exclusion')
    patterns = row.get('patterns')
    if not isinstance(patterns,list) or len(patterns) != row.get('patterns_after_column_filter'):
        raise ValueError('incomplete pattern accounting')
    if any(p.get('status') != 'EXCLUDED' for p in patterns):
        raise ValueError('not every completing-basis pattern was excluded')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--receipt',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    args = p.parse_args()
    audit = args.output.with_suffix(args.output.suffix+'.audit.json')
    if args.output.exists() or audit.exists():
        p.error('choose fresh output paths')
    saved = json.loads(args.receipt.read_text())
    index = saved.get('index')
    if type(index) is not int or not 0 <= index < 2775:
        p.error('invalid original atlas index')
    if R.binding(R.DEFAULT_ATLAS)['id'] != NATIVE:
        raise ArithmeticError('frozen native source binding changed')
    record = json.loads(gzip.decompress(R.DEFAULT_ATLAS.read_bytes()))['seeds'][index]
    validate_identity(saved,record,index)
    own_hash,guard_hash = digest(__file__),G.guard_sha256()
    preconditions = G.check(R,record)
    replayer = Path(__file__).with_name('replay_bins.py')
    subprocess.run([sys.executable,str(replayer),'--eager','--receipt',str(args.receipt.resolve()),
                    '--output',str(args.output.resolve())],check=True)
    row = json.loads(args.output.read_text())
    validate_identity(row,record,index)
    if digest(__file__) != own_hash or G.guard_sha256() != guard_hash:
        raise ArithmeticError('audit source changed during replay')
    result = dict(index=index,status='CERTIFIED EMPTY',original_radius_preserved=True,
                  radius_hex=row['radius_hex'],seed_sha256=row['seed_sha256'],native_binding=NATIVE,
                  producer_sha256=digest(args.receipt),replay_sha256=digest(args.output),
                  replay_manifest_sha256=digest(args.output.with_suffix(args.output.suffix+'.manifest.json')),
                  audit_source_sha256=own_hash,guard_sha256=guard_hash,stage_c_preconditions=preconditions,
                  patterns=len(row['patterns']),replayed_bin_witnesses=row['replayed_bin_witnesses'],
                  replayed_basis_witnesses=row['replayed_basis_witnesses'])
    audit.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(index=index,status=result['status'],audit=str(audit))),flush=True)


if __name__ == '__main__':
    main()
