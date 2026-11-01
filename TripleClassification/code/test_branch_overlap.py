#!/usr/bin/env python3
"""Tests of branch_overlap.witness (parent-child branch identification of a cell record; native review F1).

  python test_branch_overlap.py PINNED_ROOT [DATA]

DATA (default test_data/branch_overlap): ball 905's original record (persistent_cells/b905_original.json.gz), three of
its level-8 cell records (persistent_cells/905_8_*.input.json.gz) and a cell record of ball 1016
(blocking_cells/1016_3_1_2_2_0.input.json.gz).
1. each of the three 905 cell records is identified with ball 905's branch (two are boundary cells, whose centres lie
   outside the original ball, so theta* must be moved into both balls);
2. the stored centre phases P are only a proposal: shifted by 0.3 rad in rows 3-5, the record's normal form solves the
   same sides again, and the witness identifies the same branch;
3. a record of ball 1016 presented as a cell of ball 905 is refused (no common seed point);
4. a corner cell of ball 550 (level 3, (1,1,1,6)), whose record ball only touches the original ball, is identified
   against the original ball's normal form on a 1% larger radius.
"""
import copy, glob, gzip, json, math, os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import branch_overlap as BO

failures = 0
def report(name, ok, detail=''):
    global failures
    failures += not ok; print('%-4s %-72s %s' % ('PASS' if ok else 'FAIL', name, str(detail)[:120]))

def main():
    root = sys.argv[1]; data = sys.argv[2] if len(sys.argv) > 2 else os.path.join(os.path.dirname(os.path.abspath(__file__)), 'test_data/branch_overlap')
    BO.setup(root)
    orig = json.load(gzip.open(os.path.join(data, 'persistent_cells/b905_original.json.gz')))['record']; pm = BO.model(orig)
    cells = [json.load(gzip.open(f)) for f in sorted(glob.glob(os.path.join(data, 'persistent_cells/905_8_*.input.json.gz')))]
    for d in cells:
        try: w = BO.witness(orig, d['record'], d['level'], d['cell'], pm); ok = w['eta_upper'] < w['tau']
        except ArithmeticError as e: ok, w = False, e
        report('905 %s identified' % d['cell'], ok, w)
    d = cells[0]; rec = copy.deepcopy(d['record'])
    rec['P'] = [(float.fromhex(v) + (0.3 if k // 6 >= 3 else 0.0)).hex() for k, v in enumerate(rec['P'])]
    try: w = BO.witness(orig, rec, d['level'], d['cell'], pm); ok = w['eta_upper'] < w['tau']
    except ArithmeticError as e: ok, w = False, e
    report('centre phases are a proposal: moved, the same branch is identified', ok, w)
    x = json.load(gzip.open(os.path.join(data, 'blocking_cells/1016_3_1_2_2_0.input.json.gz'))); x = x.get('record', x)
    try: w = BO.witness(orig, x, d['level'], d['cell'], pm); ok = False
    except ArithmeticError as e: ok, w = True, e
    report('a record of ball 1016 as a cell of ball 905: refused', ok, w)
    o5 = json.load(gzip.open(os.path.join(data, 'corner_cells/b550_original.json.gz')))['record']
    c5 = json.load(gzip.open(os.path.join(data, 'corner_cells/550_3_1_1_1_6.input.json.gz')))
    try: w = BO.witness(o5, c5['record'], c5['level'], c5['cell'], BO.model(o5), {}); ok = w.get('enlarged') == 1.01
    except ArithmeticError as e: ok, w = False, e
    report('a corner cell: identified on a 1% larger normal form', ok, w)
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)

if __name__ == '__main__': main()
