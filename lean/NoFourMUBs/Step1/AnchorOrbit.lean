import NoFourMUBs.Step1.Census

/-!
# The 18 anchors form one orbit of the corner moves

The four corner moves (swap leading rows `1,2`; columns `1,2`; rows `0,1`; columns `0,1`; each followed by
dephasing) act on seeds by monomial maps.  Anchor coordinates are monomials `ζⁱqʲ`, so in exponent
coordinates `(i mod 3, j)` the moves are linear maps and the orbit check is a finite `decide`.

* `move_toSeed`: moves commute with the exponent model;
* `anchorSeed_eq`: every anchor is `moveWord (wordOf n) baseSeed`;
* `anchorSeed_back`: the reversed word leads back, so any anchor reaches any other.
-/

open NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.Step1Geo

/-! ### Exponent model -/

abbrev Ex := ZMod 3 × ℤ
abbrev SeedE := Fin 4 → Ex

/-- The corner moves on seeds. -/
def mR12 (p : Seed) : Seed := ![p 2, p 3, p 0, p 1]
def mC12 (p : Seed) : Seed := ![p 1, p 0, p 3, p 2]
def mR01 (p : Seed) : Seed := ![(p 0)⁻¹, (p 1)⁻¹, p 2 * (p 0)⁻¹, p 3 * (p 1)⁻¹]
def mC01 (p : Seed) : Seed := ![(p 0)⁻¹, p 1 * (p 0)⁻¹, (p 2)⁻¹, p 3 * (p 2)⁻¹]

def move (k : Fin 4) (p : Seed) : Seed :=
  match k with
  | 0 => mR12 p
  | 1 => mC12 p
  | 2 => mR01 p
  | 3 => mC01 p

def moveE (k : Fin 4) (e : SeedE) : SeedE :=
  match k with
  | 0 => ![e 2, e 3, e 0, e 1]
  | 1 => ![e 1, e 0, e 3, e 2]
  | 2 => ![-e 0, -e 1, e 2 - e 0, e 3 - e 1]
  | 3 => ![-e 0, e 1 - e 0, -e 2, e 3 - e 2]

def moveWord (w : List (Fin 4)) (p : Seed) : Seed := w.foldl (fun p k => move k p) p
def moveWordE (w : List (Fin 4)) (e : SeedE) : SeedE := w.foldl (fun e k => moveE k e) e

lemma ζC_cube : ζC ^ 3 = 1 := Circle.coe_injective (by rw [Circle.coe_pow, ζC_prim.pow_eq_one, Circle.coe_one])

def mono (e : Ex) : Circle := ζC ^ e.1.val * qC ^ e.2

lemma zeta_pow_mod (n : ℕ) : ζC ^ (n % 3) = ζC ^ n := by
  conv_rhs => rw [← Nat.div_add_mod n 3, pow_add, pow_mul, ζC_cube, one_pow, one_mul]

lemma mono_add (e f : Ex) : mono (e + f) = mono e * mono f := by
  simp only [mono, Prod.fst_add, Prod.snd_add, ZMod.val_add, zeta_pow_mod, pow_add, zpow_add]
  rw [mul_mul_mul_comm]

lemma mono_zero : mono 0 = 1 := by simp [mono]

lemma mono_neg (e : Ex) : mono (-e) = (mono e)⁻¹ :=
  eq_inv_of_mul_eq_one_left (by rw [← mono_add, neg_add_cancel, mono_zero])

lemma mono_sub (e f : Ex) : mono (e - f) = mono e * (mono f)⁻¹ := by
  rw [sub_eq_add_neg, mono_add, mono_neg]

def toSeed (e : SeedE) : Seed := fun k => mono (e k)

lemma move_toSeed (k : Fin 4) (e : SeedE) : move k (toSeed e) = toSeed (moveE k e) := by
  funext i
  fin_cases k <;> fin_cases i <;> simp [move, moveE, mR12, mC12, mR01, mC01, toSeed, mono_neg, mono_sub]

lemma moveWord_toSeed (w : List (Fin 4)) (e : SeedE) : moveWord w (toSeed e) = toSeed (moveWordE w e) := by
  induction w generalizing e with
  | nil => rfl
  | cons k w ih => simp only [moveWord, moveWordE, List.foldl_cons] at ih ⊢; rw [move_toSeed, ih]

/-! ### The anchors in exponent coordinates -/

def aE (k : Fin 3) (s : Bool) : Ex := (k, if s then 1 else -1)
def bE (k : Fin 3) (s : Bool) : Ex := (k, if s then -1 else 1)

def ordE (i : Fin 3) (a : Ex) : Ex × Ex :=
  match i with
  | 0 => (a, a)
  | 1 => (a, -(a + a))
  | 2 => (-(a + a), a)

def psiE (x y : Ex × Ex) : SeedE := ![x.1 - y.2, x.1 + x.2 + y.1, y.1 - x.2, x.1 + y.1 + y.2]

def anchorE (n : AnchorIdx) : SeedE := psiE (ordE n.2.2.1 (aE n.1 n.2.1)) (ordE n.2.2.2 (bE n.1 n.2.1))

lemma mono_aE (k : Fin 3) (s : Bool) : mono (aE k s) = aOf k s := by
  cases s <;> simp [mono, aE, aOf, zpow_neg] <;> rfl

lemma mono_bE (k : Fin 3) (s : Bool) : mono (bE k s) = bOf k s := by
  cases s <;> simp [mono, bE, bOf, zpow_neg] <;> rfl

lemma ordT_mono (i : Fin 3) (a : Ex) :
    ordT i (mono a) = (mono (ordE i a).1, mono (ordE i a).2) := by
  fin_cases i <;> simp [ordT, ordE, reord, third, mono_neg, mono_add]

lemma anchorSeed_toSeed (n : AnchorIdx) : anchorSeed n = toSeed (anchorE n) := by
  obtain ⟨k, s, i, j⟩ := n
  simp only [anchorSeed, anchorQ, anchorE, ← mono_aE, ← mono_bE, ordT_mono]
  funext m
  fin_cases m <;> simp [Psi, psiE, toSeed, mono_add, mono_sub]

def wordOf : AnchorIdx → List (Fin 4)
  | (0, true, 0, 0) => []
  | (0, true, 0, 1) => [0, 1, 2, 3]
  | (0, true, 0, 2) => [0, 1, 2, 0]
  | (0, true, 1, 0) => [1, 2, 0, 3]
  | (0, true, 1, 1) => [0, 1]
  | (0, true, 1, 2) => [0, 2]
  | (0, true, 2, 0) => [1, 2]
  | (0, true, 2, 1) => [2, 0]
  | (0, true, 2, 2) => [1, 3]
  | (0, false, 0, 0) => [0]
  | (0, false, 0, 1) => [1, 2, 3]
  | (0, false, 0, 2) => [1, 2, 0]
  | (0, false, 1, 0) => [0, 1, 2, 0, 3]
  | (0, false, 1, 1) => [1]
  | (0, false, 1, 2) => [2]
  | (0, false, 2, 0) => [0, 1, 2]
  | (0, false, 2, 1) => [0, 2, 0]
  | (0, false, 2, 2) => [0, 1, 3]
  | (1, true, 0, 0) => []
  | (1, true, 0, 1) => [0, 1, 2, 3]
  | (1, true, 0, 2) => [0, 1, 2, 0]
  | (1, true, 1, 0) => [1, 2, 0, 3]
  | (1, true, 1, 1) => [0, 1]
  | (1, true, 1, 2) => [0, 2]
  | (1, true, 2, 0) => [1, 2]
  | (1, true, 2, 1) => [2, 0]
  | (1, true, 2, 2) => [1, 3]
  | (1, false, 0, 0) => [0]
  | (1, false, 0, 1) => [1, 2, 3]
  | (1, false, 0, 2) => [1, 2, 0]
  | (1, false, 1, 0) => [0, 1, 2, 0, 3]
  | (1, false, 1, 1) => [1]
  | (1, false, 1, 2) => [2]
  | (1, false, 2, 0) => [0, 1, 2]
  | (1, false, 2, 1) => [0, 2, 0]
  | (1, false, 2, 2) => [0, 1, 3]
  | (2, true, 0, 0) => []
  | (2, true, 0, 1) => [0, 1, 2, 3]
  | (2, true, 0, 2) => [0, 1, 2, 0]
  | (2, true, 1, 0) => [1, 2, 0, 3]
  | (2, true, 1, 1) => [0, 1]
  | (2, true, 1, 2) => [0, 2]
  | (2, true, 2, 0) => [1, 2]
  | (2, true, 2, 1) => [2, 0]
  | (2, true, 2, 2) => [1, 3]
  | (2, false, 0, 0) => [0]
  | (2, false, 0, 1) => [1, 2, 3]
  | (2, false, 0, 2) => [1, 2, 0]
  | (2, false, 1, 0) => [0, 1, 2, 0, 3]
  | (2, false, 1, 1) => [1]
  | (2, false, 1, 2) => [2]
  | (2, false, 2, 0) => [0, 1, 2]
  | (2, false, 2, 1) => [0, 2, 0]
  | (2, false, 2, 2) => [0, 1, 3]

def baseE : SeedE := anchorE (0, true, 0, 0)

theorem wordOf_spec : ∀ n : AnchorIdx, moveWordE (wordOf n) baseE = anchorE n := by decide

/-- **The anchors are one orbit of the corner moves.** -/
theorem anchorSeed_eq (n : AnchorIdx) : anchorSeed n = moveWord (wordOf n) (anchorSeed (0, true, 0, 0)) := by
  rw [anchorSeed_toSeed, anchorSeed_toSeed, moveWord_toSeed, ← baseE, wordOf_spec]

/-- Each move is an involution, so the reversed word leads back to the base anchor. -/
theorem wordOf_reverse_spec : ∀ n : AnchorIdx, moveWordE (wordOf n).reverse (anchorE n) = baseE := by decide

/-- **Every anchor leads back to the base anchor.** -/
theorem anchorSeed_back (n : AnchorIdx) :
    moveWord (wordOf n).reverse (anchorSeed n) = anchorSeed (0, true, 0, 0) := by
  rw [anchorSeed_toSeed, anchorSeed_toSeed, moveWord_toSeed, wordOf_reverse_spec]; rfl

end NoFourMUBs.Step1Geo
