import NoFourMUBs.StageC.Interface

/-!
# Stage C certificates (cycle units)

`Admissible T rH n r rF δ`: `δ = Σ_k η_k T_k + ν` with `‖η‖ ≤ r_H` and `‖ν‖ ≤ n`, every column has `‖δ_{:,i}‖ ≤ r`,
and `‖δ‖_F ≤ r_F`.  This is exactly what Stage C knows about a Hadamard in a Record ball.

`StageCCert P T rH n r rF` packages the data that `certify.py` checks: leaves and labels, the O/U relations, and the
facts that each leaf is rejected (for every admissible `δ`) or labelled, every non-edge is excluded, and there are no
two cliques.  `StageCCert.excludes`: then no `E(P + δ)` with `δ` admissible is a quartet edge.

The `*_all` lemmas turn one recorded test violation into the corresponding certificate field.
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

/-! ### Recorded tests as certificate fields -/

theorem leafRej_all_of_direct {P : RMat6} {T : Fin 4 → RMat6} {rH n r rF : ℝ} {u : I6 → ℝ} {a K : ℝ}
    (ha : 0 ≤ a) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hviol : (∃ i, 2 * Real.pi * (5 * a / Real.sqrt 6 + r) < |‖S P u i‖ - 1|) ∨
      (2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF)) ^ 2 < ∑ i, (‖S P u i‖ - 1) ^ 2) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a :=
  fun _ hδ => leafRej_of_direct ha hK0 hK hδ.2.1 hδ.2.2 hviol

theorem leafRej_all_of_scalar {P : RMat6} {T : Fin 4 → RMat6} {rH n r rF : ℝ} {u : I6 → ℝ} {a K Smax : ℝ}
    (i : I6) (ha : 0 ≤ a) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hS : ‖S P u i‖ ≤ Smax)
    (hviol : a * ∑ j ∈ Finset.univ.erase j0, |Jm P u i j| + r * Real.sqrt (∑ j, Jm P u i j ^ 2) +
      min (Real.pi * ((K * (Real.sqrt (29 / 6) * a) + r) ^ 2 +
          Smax * (K * (3 / 2 * a) * (Real.sqrt (29 / 6) * a) +
            (2 * (Real.sqrt (29 / 6) * a) * r + r ^ 2) / Real.sqrt 6)))
        (Real.pi * ((5 * a / Real.sqrt 6 + r) ^ 2 + Smax * (Real.sqrt (29 / 6) * a + r) ^ 2 / Real.sqrt 6)) <
      |cc P u i|) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a :=
  fun _ hδ => leafRej_of_scalar i ha hK0 hK (hδ.2.1 i) hS hviol

theorem leafRej_all_of_linear {P : RMat6} {T : Fin 4 → RMat6} {rH n r rF : ℝ} {u y : I6 → ℝ}
    {a K Yinf Y1 G SY2 SY1 SYinf Bn N : ℝ} (ha : 0 ≤ a) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : ∑ i, |y i| ≤ Y1)
    (hG : ∀ j, ‖∑ i, (y i : ℂ) * star (S P u i) * q P u j i‖ ≤ G)
    (hSY2 : vnorm (fun i => |y i| * ‖S P u i‖) ≤ SY2) (hSY1 : ∑ i, |y i| * ‖S P u i‖ ≤ SY1)
    (hSYinf : ∀ i, |y i| * ‖S P u i‖ ≤ SYinf)
    (hBn : Real.sqrt (∑ k, Bty P u y T k ^ 2) ≤ Bn)
    (hN : Real.sqrt (∑ i, ∑ j, (y i * Jm P u i j) ^ 2) ≤ N)
    (hviol : a * ∑ j ∈ Finset.univ.erase j0, |Jty P u y j| + rH * Bn + n * N +
      Real.pi * (min (Yinf * (K * (Real.sqrt (29 / 6) * a) + rF) ^ 2) (Y1 * (K * (Real.sqrt (29 / 6) * a) + r) ^ 2) +
        min (G * (Real.sqrt (29 / 6) * a) ^ 2) (K * SY2 * (3 / 2 * a) * (Real.sqrt (29 / 6) * a)) +
        2 / Real.sqrt 6 * (Real.sqrt (29 / 6) * a) * min (SY2 * rF) (SY1 * r) +
        1 / Real.sqrt 6 * min (SYinf * rF ^ 2) (SY1 * r ^ 2)) < |∑ i, y i * cc P u i|) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej P δ u a := by
  intro δ ⟨⟨η, ν, hδ, hη, hν⟩, hr, hrF⟩
  exact leafRej_of_linear ha hδ hη hν hr hrF hK0 hK hYinf hY1 hG hSY2 hSY1 hSYinf hBn hN hviol

end NoFourMUBs.StageC
