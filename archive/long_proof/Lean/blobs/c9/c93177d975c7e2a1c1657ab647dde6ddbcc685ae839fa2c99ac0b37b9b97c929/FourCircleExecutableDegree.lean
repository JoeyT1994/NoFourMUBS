import FourCircleSparseSubstitution

/-! Execute monomial degree bounds without reducing Finsupp's support
representation. The lookup is linked by a checked equality to powersExponent. -/
namespace Mub6.Classification.FourCircleResidualSubstitution
open Mub6.Classification.SharedResidualPolynomials
open Mub6.Classification.SparsePolynomialIntervals

def powersDegree : List (Variable × ℕ) → Variable → ℕ
  | [], _ => 0
  | (j,n) :: rest, i => (if j = i then n else 0) + powersDegree rest i

theorem powersExponent_apply (ps : List (Variable × ℕ)) (i : Variable) :
    powersExponent ps i = powersDegree ps i := by
  induction ps with
  | nil => simp [powersExponent,powersDegree]
  | cons head rest ih =>
      rcases head with ⟨j,n⟩
      simp [powersExponent,powersDegree,Finsupp.single_apply,ih]

def ExecutableProgramAdmissible (B : DegreeBound) (S : Program Variable) : Prop :=
  ∀ term ∈ S, ∀ j : Fin 4,
    powersDegree term.powers (j.castSucc,0) + powersDegree term.powers (j.castSucc,1) ≤ B j

instance executableProgramAdmissibleDecidable (B : DegreeBound) (S : Program Variable) :
    Decidable (ExecutableProgramAdmissible B S) := by
  unfold ExecutableProgramAdmissible
  infer_instance

theorem programAdmissible_iff_executable (B : DegreeBound) (S : Program Variable) :
    ProgramAdmissible B S ↔ ExecutableProgramAdmissible B S := by
  simp only [ProgramAdmissible,ExecutableProgramAdmissible,pairDegree,termExponent,
    powersExponent_apply]

#print axioms Mub6.Classification.FourCircleResidualSubstitution.powersExponent_apply
#print axioms Mub6.Classification.FourCircleResidualSubstitution.programAdmissible_iff_executable
end Mub6.Classification.FourCircleResidualSubstitution
