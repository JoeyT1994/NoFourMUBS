"""Count the modules and non-blank lines in the import closure of a Lean module, ours versus upstream Hadamard6.

Usage: python3 import_closure.py [Module] [-v]   (run from lean/; default NoFourMUBs.Final; -v lists the Hadamard6 modules)
Mathlib and Lean core are not counted. Hadamard6 sources are read from .lake/packages/hadamard6_formal.
"""
import re, sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOTS = {'NoFourMUBs': HERE, 'Step1': HERE / 'Step1Gen/lean', 'Hadamard6': HERE / '.lake/packages/hadamard6_formal'}


def source(m):
    root = ROOTS.get(m.split('.')[0])
    return root / (m.replace('.', '/') + '.lean') if root else None


def closure(target):
    seen, stack = {}, [target]
    while stack:
        m = stack.pop()
        if m in seen or source(m) is None:
            continue
        text = source(m).read_text()
        seen[m] = sum(1 for l in text.splitlines() if l.strip())
        for l in text.splitlines():
            i = re.match(r'\s*(?:public\s+)?import\s+(.*)', l)
            if i:
                stack += i.group(1).split()
    return seen


if __name__ == '__main__':
    args = [a for a in sys.argv[1:] if a != '-v']
    c = closure(args[0] if args else 'NoFourMUBs.Final')
    h = {m: n for m, n in c.items() if m.startswith('Hadamard6')}
    print('total     %4d modules %6d lines' % (len(c), sum(c.values())))
    print('ours      %4d modules %6d lines' % (len(c) - len(h), sum(c.values()) - sum(h.values())))
    print('Hadamard6 %4d modules %6d lines' % (len(h), sum(h.values())))
    if '-v' in sys.argv:
        for m in sorted(h):
            print('  %-50s %5d' % (m, h[m]))
