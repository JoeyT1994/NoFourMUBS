import RoundedFourierOverlap
import Mathlib.Tactic.FinCases

/-! Explicit row/column permutations from every zero-lattice reference to F6.
All entries are actual complex phases, not abstract orbit-distance premises. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 2400000
namespace Seed0024Mathematical20261007
noncomputable section

def phaseSix (n : ℤ) : ℂ := cis ((n:ℝ)*Real.pi/3)

theorem cis_add (x y : ℝ) : cis (x+y) = cis x*cis y := by
  apply Complex.ext <;> simp [cis, Real.cos_add, Real.sin_add] <;> ring

theorem cis_add_int_two_pi (x : ℝ) (n : ℤ) :
    cis (x+(n:ℝ)*(2*Real.pi)) = cis x := by
  apply Complex.ext <;> simp [cis]

theorem phaseSix_emod (n : ℤ) : phaseSix n = phaseSix (n%6) := by
  have hn : ((n%6:ℤ):ℝ) + 6*((n/6:ℤ):ℝ) = (n:ℝ) := by
    have hz : n%6+6*(n/6)=n := by omega
    exact_mod_cast hz
  have he : (n:ℝ)*Real.pi/3 = ((n%6:ℤ):ℝ)*Real.pi/3+
      ((n/6:ℤ):ℝ)*(2*Real.pi) := by
    rw [← hn]
    ring
  unfold phaseSix
  rw [he, cis_add_int_two_pi]

def mod6Fin (n : ℤ) : Fin 6 :=
  ⟨(n%6).toNat, by
    have hl := Int.emod_nonneg n (by decide : (6:ℤ) ≠ 0)
    have hu := Int.emod_lt_of_pos n (by decide : (0:ℤ) < 6)
    omega⟩

theorem mod6Fin_val (n : ℤ) : ((mod6Fin n).val:ℤ)=n%6 := by
  unfold mod6Fin
  exact Int.toNat_of_nonneg (Int.emod_nonneg n (by decide : (6:ℤ) ≠ 0))

theorem phaseSix_nat_emod (n : ℕ) :
    phaseSix (n:ℤ) = phaseSix ((n%6:ℕ):ℤ) := by
  simpa using phaseSix_emod (n:ℤ)

theorem phaseSix_eq_of_emod_eq (a b : ℤ) (h : a%6=b%6) :
    phaseSix a=phaseSix b :=
  (phaseSix_emod a).trans ((congrArg phaseSix h).trans (phaseSix_emod b).symm)

/-- Paired-row tensor exponent, before the two right-half phase parameters. -/
def tensorExponent (r c : Fin 6) : ℕ :=
  2*(r.val/2)*(c.val%3)+3*(r.val%2)*(c.val/3)

def rowParameter (k l : Fin 6) (r : Fin 6) : ℕ :=
  if r.val/2=0 then 0 else if r.val/2=1 then k.val else l.val

def residueExponent (k l r c : Fin 6) : ℕ :=
  tensorExponent r c + (c.val/3)*rowParameter k l r

def residueFamily (k l : Fin 6) (r c : Fin 6) : ℂ :=
  phaseSix (residueExponent k l r c : ℤ)

/-- Literal unnormalized Fourier matrix in its usual sixth-root convention. -/
def explicitF6 (r c : Fin 6) : ℂ := phaseSix ((r.val*c.val : ℕ):ℤ)

def latticeRowMap (k l : Fin 6) (r : Fin 6) : Fin 6 :=
  ⟨(2*(r.val/2)+3*(r.val%2+rowParameter k l r%2))%6,
    Nat.mod_lt _ (by decide)⟩

def latticeColMap (l : Fin 6) (c : Fin 6) : Fin 6 :=
  ⟨(4*(c.val%3+(c.val/3)*(l.val%3))+3*(c.val/3))%6,
    Nat.mod_lt _ (by decide)⟩

theorem latticeRowMap_bijective :
    ∀ k l : Fin 6, Function.Bijective (latticeRowMap k l) := by decide

theorem latticeColMap_bijective :
    ∀ l : Fin 6, Function.Bijective (latticeColMap l) := by decide

theorem lattice_finite_exponents : ∀ k l : Fin 6,
    k.val%3=(2*l.val)%3 → ∀ r c : Fin 6,
    residueExponent k l r c%6 =
      ((latticeRowMap k l r).val*(latticeColMap l c).val)%6 := by decide

/-- The phase-reference matrix is literally F6 after two exhibited permutations. -/
theorem residueFamily_is_permuted_F6 (k l : Fin 6)
    (hk : k.val%3=(2*l.val)%3) (r c : Fin 6) :
    residueFamily k l r c = explicitF6 (latticeRowMap k l r) (latticeColMap l c) := by
  unfold residueFamily explicitF6
  apply phaseSix_eq_of_emod_eq
  exact_mod_cast lattice_finite_exponents k l hk r c

/-- Actual integer-pi zero-lattice phases, in paired-row Fourier form. -/
def zeroLatticeFamily (n m : ℤ) (r c : Fin 6) : ℂ :=
  phaseSix ((tensorExponent r c:ℤ) + (c.val/3:ℕ)*
    (if r.val/2=0 then 0 else if r.val/2=1 then 2*n+m else n+2*m))

theorem zero_lattice_residue_compatibility (n m : ℤ) :
    (mod6Fin (2*n+m)).val%3 = (2*(mod6Fin (n+2*m)).val)%3 := by
  have h1 := mod6Fin_val (2*n+m)
  have h2 := mod6Fin_val (n+2*m)
  omega

theorem zeroLatticeFamily_reduction (n m : ℤ) (r c : Fin 6) :
    zeroLatticeFamily n m r c =
      residueFamily (mod6Fin (2*n+m)) (mod6Fin (n+2*m)) r c := by
  have h1 := mod6Fin_val (2*n+m)
  have h2 := mod6Fin_val (n+2*m)
  unfold zeroLatticeFamily residueFamily residueExponent tensorExponent rowParameter
  fin_cases r <;> fin_cases c <;> norm_num
  all_goals apply phaseSix_eq_of_emod_eq
  all_goals push_cast
  all_goals omega

theorem zeroLatticeFamily_is_permuted_F6 (n m : ℤ) :
    ∃ rowPerm colPerm : Equiv.Perm (Fin 6),
      ∀ r c : Fin 6, zeroLatticeFamily n m r c = explicitF6 (rowPerm r) (colPerm c) := by
  let k := mod6Fin (2*n+m)
  let l := mod6Fin (n+2*m)
  refine ⟨Equiv.ofBijective (latticeRowMap k l) (latticeRowMap_bijective k l),
    Equiv.ofBijective (latticeColMap l) (latticeColMap_bijective l), ?_⟩
  intro r c
  exact (zeroLatticeFamily_reduction n m r c).trans
    (residueFamily_is_permuted_F6 k l (zero_lattice_residue_compatibility n m) r c)

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.phaseSix_emod
#print axioms Seed0024Mathematical20261007.latticeRowMap_bijective
#print axioms Seed0024Mathematical20261007.latticeColMap_bijective
#print axioms Seed0024Mathematical20261007.zeroLatticeFamily_is_permuted_F6
