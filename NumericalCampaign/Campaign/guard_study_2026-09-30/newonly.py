# write every K-th guarded layer record whose content is absent from the unguarded layer.txt
import hashlib, sys
old, new, K, out = sys.argv[1], sys.argv[2], int(sys.argv[3]), sys.argv[4]
R = 121
s = set()
with open(old, "rb") as f:
    while (rec := f.read(R)):
        s.add(hashlib.blake2b(rec[9:], digest_size=8).digest())
n = 0
with open(new, "rb") as f, open(out, "wb") as o:
    while (rec := f.read(R)):
        if hashlib.blake2b(rec[9:], digest_size=8).digest() not in s:
            n += 1
            if n % K == 1:
                o.write(rec)
print("new-only", n)
