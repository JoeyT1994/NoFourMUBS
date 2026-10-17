"""Post-process generated Lean data files: smaller oleans, same checks.

* every top-level `def` becomes `noncomputable def`: the data are only ever evaluated by the kernel (`decide +kernel`),
  and a computable definition makes Lean store compiled code for each literal (Record 146's slab modules: 15.6 MB of
  olean, 1.1 MB without the code);
* a one-line `def NAME : List ℕ := [a, b, …]` with at least MIN_LEN entries becomes
  `noncomputable def NAME : List ℕ := unpackL w n 0x…` (`KernelAtlas/Pack.lean`), the digits in base 2^w.
Idempotent.  Usage: python3 kpack.py <dir or file> ...
"""
import os, re, sys

sys.set_int_max_str_digits(0)

MIN_LEN = 32
LIST_RE = re.compile(r'^(?:noncomputable )?def (\S+) : List ℕ := \[([0-9, ]*)\]\s*$')


def pack_line(line):
    m = LIST_RE.match(line)
    if not m or not m.group(2).strip():
        return None
    vals = [int(t) for t in m.group(2).split(',')]
    if len(vals) < MIN_LEN:
        return None
    w = max(1, max(v.bit_length() for v in vals))
    x = 0
    for v in reversed(vals):
        x = (x << w) | v
    return 'noncomputable def %s : List ℕ := unpackL %d %d 0x%x\n' % (m.group(1), w, len(vals), x)


def seal_text(text):
    out, packed = [], False
    for line in text.splitlines(keepends=True):
        p = pack_line(line)
        if p is not None:
            out.append(p); packed = True
            continue
        if line.startswith('def '):
            line = 'noncomputable ' + line
        out.append(line)
    text = ''.join(out)
    if packed and 'import KernelAtlas.Pack\n' not in text:
        lines = text.splitlines(keepends=True)
        last = max(i for i, l in enumerate(lines) if l.startswith('import '))
        lines.insert(last + 1, 'import KernelAtlas.Pack\n')
        text = ''.join(lines)
    return text


def seal(path):
    files = [path] if path.endswith('.lean') else [os.path.join(path, f) for f in sorted(os.listdir(path))
                                                   if f.endswith('.lean')]
    for f in files:
        t = open(f).read()
        s = seal_text(t)
        if s != t:
            with open(f, 'w') as g:
                g.write(s)


if __name__ == '__main__':
    for p in sys.argv[1:]:
        seal(p)
