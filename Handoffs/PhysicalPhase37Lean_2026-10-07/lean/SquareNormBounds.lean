import IntegerPhaseArithmetic

/-! Exact square tests for arbitrary integer pairs. The executable predicates
contain no square-root computation. Supplied floors are checked against both
adjacent squares; no proposal or native execution is trusted. -/
set_option autoImplicit false
namespace Seed0024ClusterTube20261007

def integerPairSquare (z : ℤ × ℤ) : ℤ := z.1*z.1+z.2*z.2

def normFloorWitnessCheck (z : ℤ × ℤ) (r : ℕ) : Bool :=
  decide (r*r ≤ integerNormSq z.1 z.2 ∧ integerNormSq z.1 z.2 < (r+1)*(r+1))

theorem integerPairSquare_nonneg (z : ℤ × ℤ) : 0 ≤ integerPairSquare z :=
  add_nonneg (mul_self_nonneg z.1) (mul_self_nonneg z.2)

theorem pairFloor_square_bounds (z : ℤ × ℤ) :
    0 ≤ integerPairNormFloor z ∧
    integerPairNormFloor z*integerPairNormFloor z ≤ integerPairSquare z ∧
    integerPairSquare z < (integerPairNormFloor z+1)*(integerPairNormFloor z+1) := by
  have h := (Nat.eq_sqrt).1 (rfl :
    Nat.sqrt (integerNormSq z.1 z.2)=Nat.sqrt (integerNormSq z.1 z.2))
  have hcast : (integerNormSq z.1 z.2 : ℤ)=integerPairSquare z := by
    exact Int.toNat_of_nonneg (integerPairSquare_nonneg z)
  have hl : (Nat.sqrt (integerNormSq z.1 z.2) : ℤ)*
      (Nat.sqrt (integerNormSq z.1 z.2) : ℤ) ≤ (integerNormSq z.1 z.2 : ℤ) := by
    exact_mod_cast h.1
  have hu : (integerNormSq z.1 z.2 : ℤ) < 
      ((Nat.sqrt (integerNormSq z.1 z.2) : ℤ)+1)*
      ((Nat.sqrt (integerNormSq z.1 z.2) : ℤ)+1) := by
    exact_mod_cast h.2
  refine ⟨integerPairNormFloor_nonneg z,?_,?_⟩
  · simpa only [integerPairNormFloor,integerNormFloor,hcast] using hl
  · simpa only [integerPairNormFloor,integerNormFloor,hcast] using hu

theorem pairFloor_lt_iff_square_lt (z : ℤ × ℤ) (b : ℤ) (hb : 0 < b) :
    integerPairNormFloor z < b ↔ integerPairSquare z < b*b := by
  obtain ⟨hr,hl,hu⟩ := pairFloor_square_bounds z
  constructor
  · intro h
    have hle : integerPairNormFloor z+1 ≤ b := by omega
    have hs := pow_le_pow_left₀ (by omega : 0 ≤ integerPairNormFloor z+1) hle 2
    nlinarith
  · intro h
    by_contra hn
    have hle : b ≤ integerPairNormFloor z := by omega
    have hs := pow_le_pow_left₀ hb.le hle 2
    nlinarith

theorem pairFloor_ge_iff_square_le (z : ℤ × ℤ) (b : ℤ) (hb : 0 ≤ b) :
    b ≤ integerPairNormFloor z ↔ b*b ≤ integerPairSquare z := by
  obtain ⟨hr,hl,hu⟩ := pairFloor_square_bounds z
  constructor
  · intro h
    have hs := pow_le_pow_left₀ hb h 2
    nlinarith
  · intro h
    by_contra hn
    have hlt : integerPairNormFloor z < b := by omega
    have hbpos : 0 < b := by omega
    have hsq := (pairFloor_lt_iff_square_lt z b hbpos).1 hlt
    omega

theorem normFloorWitnessCheck_eq (z : ℤ × ℤ) (r : ℕ)
    (hcheck : normFloorWitnessCheck z r=true) :
    (r : ℤ)=integerPairNormFloor z := by
  have hh : r*r ≤ integerNormSq z.1 z.2 ∧ integerNormSq z.1 z.2 < (r+1)*(r+1) :=
    of_decide_eq_true hcheck
  have he := corrected_floor_eq (integerNormSq z.1 z.2) r hh.1 hh.2
  change (r : ℤ)=(Nat.sqrt (integerNormSq z.1 z.2) : ℤ)
  exact_mod_cast he

theorem normFloorWitnessCheck_self (z : ℤ × ℤ) :
    normFloorWitnessCheck z (Nat.sqrt (integerNormSq z.1 z.2))=true := by
  apply decide_eq_true
  exact (Nat.eq_sqrt).1 rfl

#print axioms integerPairSquare_nonneg
#print axioms pairFloor_square_bounds
#print axioms pairFloor_lt_iff_square_lt
#print axioms pairFloor_ge_iff_square_le
#print axioms normFloorWitnessCheck_eq
#print axioms normFloorWitnessCheck_self
end Seed0024ClusterTube20261007
