import NoFourMUBs.StageC.Interface

/-!
# Stage C certificates (cycle units)

`Admissible T rH n r rF δ`: `δ = Σ_k η_k T_k + ν` with `‖η‖ ≤ r_H` and `‖ν‖ ≤ n`, every column has `‖δ_{:,i}‖ ≤ r`,
and `‖δ‖_F ≤ r_F`.  This is exactly what Stage C knows about a Hadamard in a Record ball.

`StageCCert P T rH n r rF` packages the data that `certify.py` checks: leaves and labels, the O/U relations, and the
facts that each leaf is rejected (for every admissible `δ`) or labelled, every non-edge is excluded, and there are no
two cliques.  `StageCCert.excludes`: then no `E(P + δ)` with `δ` admissible is a quartet edge.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

def Admissible (T : Fin 4 → RMat6) (rH n r rF : ℝ) (δ : RMat6) : Prop :=
  (∃ η : Fin 4 → ℝ, ∃ ν : RMat6, δ = (∑ k, η k • T k) + ν ∧ Real.sqrt (∑ k, η k ^ 2) ≤ rH ∧ frob ν ≤ n) ∧
    (∀ i, colnorm δ i ≤ r) ∧ frob δ ≤ rF

/-- The Stage C certificate of one Record. -/
structure StageCCert (P : RMat6) (T : Fin 4 → RMat6) (rH n r rF : ℝ) where
  ι : Type
  α : Type
  u : ι → I6 → ℝ
  a : ι → ℝ
  v : α → I6 → ℝ
  s : α → ℝ
  O : α → α → Prop
  U : α → α → Prop
  hu0 : ∀ l, u l j0 = 0
  htree : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → ∃ l, 0 ≤ a l ∧ ∀ j, |β j - u l j| ≤ a l
  hleaf : ∀ l, (∀ δ, Admissible T rH n r rF δ → LeafRej P δ (u l) (a l)) ∨
    (∃ b, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * a l ^ 2 →
      InLabel (v b) (s b) (fun j => e (u l j + x j)))
  hsmall : ∀ b, s b < 1 / 10
  hO : ∀ b c, ¬ O b c → ∀ δ, Admissible T rH n r rF δ → EdgeOExcl P δ (v b) (s b) (v c) (s c)
  hU : ∀ b c, ¬ U b c → ∀ δ, Admissible T rH n r rF δ → EdgeUExcl P δ (v b) (s b) (v c) (s c)
  hgraph : NoTwoCliques O U

/-- **Lemma 3.2 (Stage C).** -/
theorem StageCCert.excludes {P : RMat6} {T : Fin 4 → RMat6} {rH n r rF : ℝ} (C : StageCCert P T rH n r rF)
    {δ : RMat6} (hδ : Admissible T rH n r rF δ) : ¬ QuartetEdge (E (P + δ)) :=
  stageC_semantic C.hu0 C.htree (fun l => (C.hleaf l).imp (fun h => h δ hδ) id) C.hsmall
    (fun b c h => C.hO b c h δ hδ) (fun b c h => C.hU b c h δ hδ) C.hgraph

end NoFourMUBs.StageC
