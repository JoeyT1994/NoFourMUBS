import ZeroLatticeF6

/-! Literal Fourier reference and its single common half-phase row gauge.
All matrices in this file have actual complex entries. -/
set_option autoImplicit false
set_option maxHeartbeats 2400000
namespace Seed0024Mathematical20261007
noncomputable section

def explicitPairedFamily (alpha beta : ℝ) (r c : Fin 6) : ℂ :=
  cis ((tensorExponent r c : ℝ)*Real.pi/3 +
    (c.val/3 : ℕ)*repeatedPhase alpha beta r)

theorem explicitPairedFamily_unit (alpha beta : ℝ) (r c : Fin 6) :
    Complex.normSq (explicitPairedFamily alpha beta r c)=1 :=
  cis_normSq _

theorem zeroLatticeFamily_unit (n m : ℤ) (r c : Fin 6) :
    Complex.normSq (zeroLatticeFamily n m r c)=1 := cis_normSq _

theorem explicitPairedFamily_lattice (n m : ℤ) (r c : Fin 6) :
    explicitPairedFamily (((2*n+m:ℤ):ℝ)*Real.pi/3)
      (((n+2*m:ℤ):ℝ)*Real.pi/3) r c=zeroLatticeFamily n m r c := by
  unfold explicitPairedFamily zeroLatticeFamily phaseSix
  congr 1
  fin_cases r <;> fin_cases c <;> simp [repeatedPhase] <;> push_cast <;> ring

theorem explicitPairedFamily_add (a b x y : ℝ) (r c : Fin 6) :
    explicitPairedFamily (a+x) (b+y) r c =
      cis ((c.val/3 : ℕ)*repeatedPhase x y r)*explicitPairedFamily a b r c := by
  unfold explicitPairedFamily
  rw [← cis_add]
  congr 1
  fin_cases r <;> simp [repeatedPhase] <;> ring

def roundedReference (alpha beta : ℝ) : Fin 6 → Fin 6 → ℂ :=
  zeroLatticeFamily (nearestPiInt (2*alpha-beta)) (nearestPiInt (2*beta-alpha))

theorem roundedReference_unit (alpha beta : ℝ) (r c : Fin 6) :
    Complex.normSq (roundedReference alpha beta r c)=1 :=
  zeroLatticeFamily_unit _ _ _ _

theorem roundedReference_is_permuted_F6 (alpha beta : ℝ) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∀ r c,
      roundedReference alpha beta r c=explicitF6 (rows r) (cols c) :=
  zeroLatticeFamily_is_permuted_F6 _ _

theorem roundedReference_eq_lattice (alpha beta : ℝ) (r c : Fin 6) :
    roundedReference alpha beta r c=
      explicitPairedFamily (latticeAlpha alpha beta) (latticeBeta alpha beta) r c := by
  unfold roundedReference latticeAlpha latticeBeta
  convert (explicitPairedFamily_lattice (nearestPiInt (2*alpha-beta))
    (nearestPiInt (2*beta-alpha)) r c).symm using 1 <;> push_cast <;> ring

theorem explicitPairedFamily_rounded (alpha beta : ℝ) (r c : Fin 6) :
    explicitPairedFamily alpha beta r c=
      cis ((c.val/3 : ℕ)*repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta) r)*
        roundedReference alpha beta r c := by
  rw [roundedReference_eq_lattice]
  convert explicitPairedFamily_add (latticeAlpha alpha beta) (latticeBeta alpha beta)
    (errorAlpha alpha beta) (errorBeta alpha beta) r c using 1 <;>
    simp [errorAlpha,errorBeta]

def gaugedReference (alpha beta : ℝ) (r c : Fin 6) : ℂ :=
  cis (repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta) r/2)*
    roundedReference alpha beta r c

theorem gaugedReference_is_monomial_F6 (alpha beta : ℝ) :
    ∃ rows cols : Equiv.Perm (Fin 6), ∃ gauge : Fin 6 → ℂ,
      (∀ r, Complex.normSq (gauge r)=1) ∧
      ∀ r c, gaugedReference alpha beta r c=gauge r*explicitF6 (rows r) (cols c) := by
  obtain ⟨rows,cols,h⟩ := roundedReference_is_permuted_F6 alpha beta
  refine ⟨rows,cols,fun r => cis (repeatedPhase (errorAlpha alpha beta)
    (errorBeta alpha beta) r/2),fun r => cis_normSq _,?_⟩
  intro r c
  exact congrArg (fun z => cis (repeatedPhase (errorAlpha alpha beta)
    (errorBeta alpha beta) r/2)*z) (h r c)

theorem explicitPairedFamily_left_column (alpha beta : ℝ) (c : Fin 6) (hc : c.val<3) :
    (fun r => explicitPairedFamily alpha beta r c/(Real.sqrt 6 : ℂ))=
      phaseColumn (fun r => roundedReference alpha beta r c) (fun _ => 0) := by
  funext r
  rw [explicitPairedFamily_rounded]
  have h : c.val/3=0 := Nat.div_eq_of_lt hc
  simp [h,phaseColumn,cis_zero]

theorem explicitPairedFamily_right_column (alpha beta : ℝ) (c : Fin 6)
    (hc : 3≤c.val) :
    (fun r => explicitPairedFamily alpha beta r c/(Real.sqrt 6 : ℂ))=
      phaseColumn (fun r => roundedReference alpha beta r c)
        (repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta)) := by
  funext r
  rw [explicitPairedFamily_rounded]
  have h : c.val/3=1 := by omega
  simp [h,phaseColumn]

theorem gaugedReference_column (alpha beta : ℝ) (c : Fin 6) :
    (fun r => gaugedReference alpha beta r c/(Real.sqrt 6 : ℂ))=
      phaseColumn (fun r => roundedReference alpha beta r c)
        (fun r => repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta) r/2) := rfl

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.explicitPairedFamily_lattice
#print axioms Seed0024Mathematical20261007.gaugedReference_is_monomial_F6
#print axioms Seed0024Mathematical20261007.explicitPairedFamily_left_column
#print axioms Seed0024Mathematical20261007.explicitPairedFamily_right_column
