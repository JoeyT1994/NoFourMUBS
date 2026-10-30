#!/usr/bin/env python3
"""Replay one whole-cell proposal with PR #4's plane_frontier_certificate.run and ext_cell_certificate's check (the
pinned check plus the projector witness). Same arguments and receipt as the pinned replay; the receipt's
dependencies_sha256 also binds the extension's files.

  python ext_replay.py ROOT ENTRY --input INPUT --proposal PROPOSAL --out RECEIPT
"""
import argparse, json, os, sys, time
from pathlib import Path


def main():
    ap = argparse.ArgumentParser(description=__doc__); ap.add_argument('root'); ap.add_argument('entry', type=Path)
    ap.add_argument('--input', type=Path, required=True); ap.add_argument('--proposal', type=Path, required=True)
    ap.add_argument('--out', type=Path, required=True)
    a = ap.parse_args(); root = Path(a.root).resolve(); os.environ['TC_ROOT'] = str(root)
    sys.path.insert(0, str(root / 'TripleClassification/code'))   # the pinned tree only: this file's folder holds other
    import plane_frontier_certificate as F                          # versions of some pinned modules
    import importlib.util
    spec = importlib.util.spec_from_file_location('ext_cell_certificate', Path(__file__).resolve().parent / 'ext_cell_certificate.py')
    Ext = importlib.util.module_from_spec(spec); spec.loader.exec_module(Ext); Ext.install()
    start = time.monotonic(); entry = F.read_json(a.entry)
    try: result = F.run(root, entry, a.out, a.proposal, a.input)
    except (ValueError, ArithmeticError, ZeroDivisionError, KeyError, TypeError) as exc:
        result = dict(status='NOT_ESTABLISHED', reason=str(exc), ball=entry['ball'], level=entry['level'], cell=entry['cell'])
    result.update(entry_sha256=F.digest(a.entry), checker_sha256=F.digest(F.__file__), total_seconds=time.monotonic() - start,
                  extension='ext_cell_certificate.py')
    a.out.write_text(json.dumps(result, indent=2) + '\n'); print(json.dumps({k: result[k] for k in ('status', 'total_seconds')}))
    return 0 if result['status'] in ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL') else 1


if __name__ == '__main__': sys.exit(main())
