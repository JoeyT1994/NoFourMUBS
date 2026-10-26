import NoFourMUBs.SeedAtlas.Method.WholeBallBounds

/-!
# Exact scalar gate for Z's whole-ball inequalities

`scalarCheck_sound` transfers a rational computation to the real inequalities.
This gate deliberately has no theorem concluding `hC1`: its inputs are scalar
*bounds*, and their connection to the centre computation remains a separate
proof obligation. No Arb output is trusted by this theorem.
-/

namespace NoFourMUBs.KernelAtlas.WholeBall

open SeedAtlas.Method.WholeBall

/-- An exact rational scalar witness. The signs have already been applied to
the two `signedCentre` lower bounds. -/
structure ScalarData where
  bounds : Bounds ℚ
  horizontal : SideBounds ℚ
  vertical : SideBounds ℚ
  deriving Repr

instance (B : Bounds ℚ) : Decidable B.Nonneg := by
  unfold Bounds.Nonneg
  infer_instance

instance (S : SideBounds ℚ) : Decidable S.Nonneg := by
  unfold SideBounds.Nonneg
  infer_instance

def scalarCheck (D : ScalarData) : Bool :=
  decide (D.bounds.Nonneg ∧ D.horizontal.Nonneg ∧ D.vertical.Nonneg ∧
    0 < D.bounds.r ∧ 0 < D.bounds.tau ∧ D.bounds.q < 1 ∧
    D.bounds.b0 + D.bounds.q * D.bounds.tau < D.bounds.tau ∧
    0 < D.horizontal.margin D.bounds ∧ 0 < D.vertical.margin D.bounds ∧
    D.bounds.nrecord ≤ D.bounds.n)

noncomputable def realBounds (B : Bounds ℚ) : Bounds ℝ :=
  ⟨B.r, B.tau, B.x, B.u, B.beta, B.c, B.d, B.L3, B.t3, B.t4, B.L5, B.a2, B.L3a, B.epsP, B.epsU, B.n⟩

noncomputable def realSide (S : SideBounds ℚ) : SideBounds ℝ :=
  ⟨S.AU, S.AH2, S.AX, S.gU, S.gH2, S.gX, S.signedCentre⟩

/-- Only the scalar inequalities are certified here. In particular this theorem
does not certify a side root, a tensor bound, or a Hadamard completion. -/
theorem scalarCheck_sound {D : ScalarData} (hok : scalarCheck D = true) :
    (realBounds D.bounds).Accepts (realSide D.horizontal) (realSide D.vertical) := by
  have h := of_decide_eq_true hok
  change D.bounds.Accepts D.horizontal D.vertical at h
  unfold Bounds.Accepts Bounds.Nonneg SideBounds.Nonneg Bounds.q Bounds.qbase Bounds.base
    Bounds.b0 Bounds.nrecord Bounds.ndirect SideBounds.margin SideBounds.variation SideBounds.eps at h ⊢
  simp only [realBounds, realSide]
  exact_mod_cast h

end NoFourMUBs.KernelAtlas.WholeBall
