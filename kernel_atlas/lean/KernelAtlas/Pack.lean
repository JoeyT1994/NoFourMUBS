/-!
# Packed data literals

Generated per-Record data are stored as one big natural number per list (`kpack.py`): `unpackL w n x` is the list of
the `n` base-`2^w` digits of `x`, least significant first. It is only a decoder: the checkers see an ordinary
`List Nat`, and the kernel evaluates the decoder once per list (division by `2^w` on a GMP literal).
-/

namespace NoFourMUBs.KernelAtlas

/-- The `n` base-`2^w` digits of `x`, least significant first. -/
def unpackL (w : Nat) : Nat → Nat → List Nat
  | 0, _ => []
  | n + 1, x => x % 2 ^ w :: unpackL w n (x / 2 ^ w)

end NoFourMUBs.KernelAtlas
