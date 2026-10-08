#!/usr/bin/env python3
"""Outcome accounting for a replay_full.jl log (PROOF_OF_RECORD.md §5.5, §10.7): replay_full.jl's own exit status
is not a failure flag, so this counts the requested, completed, agreeing and disagreeing cases explicitly.

  python3 check_replay.py logs/replay_full.log     exit 0 only if every requested leaf was replayed and agrees

Sampling is with replacement (a random task file, then a random certified leaf), so distinct leaves are counted
by their printed (method, θ, ρ) as well."""
import re, sys, json
text = open(sys.argv[1]).read()
m = re.search(r"replaying (\d+) random certified leaves", text)
requested = int(m.group(1)) if m else None
rows = [l for l in text.splitlines() if l.startswith(("agree", "DISAGREE"))]
agree = sum(l.startswith("agree") for l in rows); dis = len(rows) - agree
distinct = len({re.sub(r"\(\d+ labels\).*", "", l.split(":", 1)[0]) for l in rows})
final = re.search(r"replay: (all (\d+) agree|(\d+) disagreements)", text)
ok = requested is not None and len(rows) == requested and dis == 0 and final is not None and final.group(2) == str(requested)
print(json.dumps(dict(requested=requested, completed=len(rows), agree=agree, disagree=dis, distinct_leaves=distinct,
                      final_line=final.group(0) if final else None, status="PASS" if ok else "FAIL")))
sys.exit(0 if ok else 1)
