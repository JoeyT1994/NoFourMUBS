import NoFourMUBs.StageC.Joint

/-!
# Stage C: the certificate interface

**Semantic layer.**  For a fixed cycle displacement `δ` of a Record:
* `LeafRej P δ u a`: no vector of the bin `(u, a)` is unbiased to every column of `E(P + δ)`;
* `EdgeOExcl` / `EdgeUExcl`: no two vectors of the labels `a`, `b` (both unbiased to every column) are
  orthogonal / unbiased.

`stageC_semantic`: leaves covering `[0, 1]⁵`, each rejected or labelled, labels of radius `< 1/10`, every non-edge
excluded and no two cliques ⇒ `E(P + δ)` is not a quartet edge.

**Test layer.**  Each recorded test violation implies the corresponding semantic predicate: `leafRej_of_direct`,
`leafRej_of_scalar`, `leafRej_of_linear`, `edgeOExcl_of_direct`, `edgeOExcl_of_support`, `edgeUExcl_of_direct`,
`edgeUExcl_of_support`, `edgeOExcl_of_joint`, `edgeUExcl_of_joint`.  The constants are those of `stagec.py`:
`X = √(29/6)a`, `Λ = 5a`, `I = 3a/2`, `r_e = s_a + s_b`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.StageC

/-! ### Semantic predicates -/

def LeafRej (P δ : RMat6) (u : I6 → ℝ) (a : ℝ) : Prop :=
  ∀ d : I6 → ℝ, d j0 = 0 → (∀ j, |d j| ≤ a) → ¬ ColUnb (E (P + δ)) (fun j => e (u j + centre d j))

def EdgeOExcl (P δ : RMat6) (va : I6 → ℝ) (sa : ℝ) (vb : I6 → ℝ) (sb : ℝ) : Prop :=
  ∀ xa xb : I6 → ℝ, ∑ j, xa j = 0 → vnorm xa ≤ sa → ∑ j, xb j = 0 → vnorm xb ≤ sb →
    ColUnb (E (P + δ)) (fun j => e (va j + xa j)) → ColUnb (E (P + δ)) (fun j => e (vb j + xb j)) →
    Se' va vb (fun j => xa j - xb j) ≠ 0

def EdgeUExcl (P δ : RMat6) (va : I6 → ℝ) (sa : ℝ) (vb : I6 → ℝ) (sb : ℝ) : Prop :=
  ∀ xa xb : I6 → ℝ, ∑ j, xa j = 0 → vnorm xa ≤ sa → ∑ j, xb j = 0 → vnorm xb ≤ sb →
    ColUnb (E (P + δ)) (fun j => e (va j + xa j)) → ColUnb (E (P + δ)) (fun j => e (vb j + xb j)) →
    ‖Se' va vb (fun j => xa j - xb j)‖ ^ 2 ≠ 6

/-- **Stage C, semantic form.** -/
theorem stageC_semantic {ι α : Type*} {P δ : RMat6} {u : ι → I6 → ℝ} {a : ι → ℝ}
    {v : α → I6 → ℝ} {s : α → ℝ} {O U : α → α → Prop}
    (hu0 : ∀ l, u l j0 = 0)
    (htree : ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → ∃ l, 0 ≤ a l ∧ ∀ j, |β j - u l j| ≤ a l)
    (hleaf : ∀ l, LeafRej P δ (u l) (a l) ∨
      (∃ b, ∀ x : I6 → ℝ, ∑ j, x j = 0 → ∑ j, x j ^ 2 ≤ 29 / 6 * a l ^ 2 →
        InLabel (v b) (s b) (fun j => e (u l j + x j))))
    (hsmall : ∀ b, s b < 1 / 10)
    (hO : ∀ b c, ¬ O b c → EdgeOExcl P δ (v b) (s b) (v c) (s c))
    (hU : ∀ b c, ¬ U b c → EdgeUExcl P δ (v b) (s b) (v c) (s c))
    (hgraph : NoTwoCliques O U) : ¬ QuartetEdge (E (P + δ)) := by
  refine not_quartetEdge hsmall (cover_of_leaves hu0 htree hleaf) ?_ ?_ hgraph
  · intro b c w w' _ _ hcw hcw' hwb hwc hip
    by_contra hnO
    obtain ⟨ca, hca, xa, hxa0, hxa, hwa⟩ := hwb
    obtain ⟨cb, hcb, xb, hxb0, hxb, hwb'⟩ := hwc
    have ew : w = fun j => ca * e (v b j + xa j) := funext hwa
    have ew' : w' = fun j => cb * e (v c j + xb j) := funext hwb'
    rw [ew] at hcw hip; rw [ew'] at hcw' hip
    rw [colUnb_smul hca] at hcw; rw [colUnb_smul hcb] at hcw'
    refine hO b c hnO xa xb hxa0 hxa hxb0 hxb hcw hcw' ?_
    have h := norm_ip_label (v b) (v c) xa xb hca hcb
    rw [hip, norm_zero] at h
    exact norm_eq_zero.mp h.symm
  · intro b c w w' _ _ hcw hcw' hwb hwc hip
    by_contra hnU
    obtain ⟨ca, hca, xa, hxa0, hxa, hwa⟩ := hwb
    obtain ⟨cb, hcb, xb, hxb0, hxb, hwb'⟩ := hwc
    have ew : w = fun j => ca * e (v b j + xa j) := funext hwa
    have ew' : w' = fun j => cb * e (v c j + xb j) := funext hwb'
    rw [ew] at hcw hip; rw [ew'] at hcw' hip
    rw [colUnb_smul hca] at hcw; rw [colUnb_smul hcb] at hcw'
    refine hU b c hnU xa xb hxa0 hxa hxb0 hxb hcw hcw' ?_
    rw [← norm_ip_label (v b) (v c) xa xb hca hcb]; exact hip

/-! ### Test layer: leaves -/

lemma vnorm_centre_le {d : I6 → ℝ} {a : ℝ} (ha : 0 ≤ a) (h : ∑ j, centre d j ^ 2 ≤ 29 / 6 * a ^ 2) :
    vnorm (centre d) ≤ Real.sqrt (29 / 6) * a := by
  rw [vnorm, ← Real.sqrt_sq ha, ← Real.sqrt_mul (by norm_num)]
  exact Real.sqrt_le_sqrt (by linarith)

/-- **Direct test (C2a)** rejects a leaf. -/
theorem leafRej_of_direct {P δ : RMat6} {u : I6 → ℝ} {a K r rF : ℝ} (ha : 0 ≤ a) (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hviol : (∃ i, 2 * Real.pi * (5 * a / Real.sqrt 6 + r) < |‖S P u i‖ - 1|) ∨
      (2 * Real.pi * (K * (Real.sqrt (29 / 6) * a) + rF)) ^ 2 < ∑ i, (‖S P u i‖ - 1) ^ 2) :
    LeafRej P δ u a := by
  intro d hd0 hd hcol
  obtain ⟨h2, h1, -⟩ := bin_bounds ha hd0 hd
  obtain ⟨t1, t2⟩ := direct_test hK0 hK (vnorm_centre_le ha h2) h1 hr hrF hcol
  rcases hviol with ⟨i, hi⟩ | hv
  · exact absurd (t1 i) (not_le.mpr hi)
  · exact absurd t2 (not_le.mpr hv)

/-- **Scalar test (6.12)** rejects a leaf. -/
theorem leafRej_of_scalar {P δ : RMat6} {u : I6 → ℝ} {a K r Smax : ℝ} (i : I6) (ha : 0 ≤ a) (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z) (hr : colnorm δ i ≤ r) (hS : ‖S P u i‖ ≤ Smax)
    (hviol : a * ∑ j ∈ Finset.univ.erase j0, |Jm P u i j| + r * Real.sqrt (∑ j, Jm P u i j ^ 2) +
      min (Real.pi * ((K * (Real.sqrt (29 / 6) * a) + r) ^ 2 +
          Smax * (K * (3 / 2 * a) * (Real.sqrt (29 / 6) * a) +
            (2 * (Real.sqrt (29 / 6) * a) * r + r ^ 2) / Real.sqrt 6)))
        (Real.pi * ((5 * a / Real.sqrt 6 + r) ^ 2 + Smax * (Real.sqrt (29 / 6) * a + r) ^ 2 / Real.sqrt 6)) <
      |cc P u i|) :
    LeafRej P δ u a := by
  intro d hd0 hd hcol
  obtain ⟨h2, h1, hinf⟩ := bin_bounds ha hd0 hd
  have hc := (colUnb_iff P δ u (centre d)).mp hcol i
  exact absurd (scalar_test i hd0 hd hr hK0 hK (vnorm_centre_le ha h2) hinf h1 hS hc) (not_le.mpr hviol)

/-- **Linearised test (C2b)** rejects a leaf, for one proposed `y`. -/
theorem leafRej_of_linear {P δ : RMat6} {u y : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ} {ν : RMat6}
    {a rH n K r rF Yinf Y1 G SY2 SY1 SYinf Bn N : ℝ} (ha : 0 ≤ a)
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF)
    (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
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
    LeafRej P δ u a := by
  intro d hd0 hd hcol
  obtain ⟨h2, -, hinf⟩ := bin_bounds ha hd0 hd
  exact absurd (linear_test hd0 hd hδ hη hν hr hrF hK0 hK (vnorm_centre_le ha h2) hinf hYinf hY1 hG hSY2 hSY1
    hSYinf hBn hN hcol) (not_le.mpr hviol)

/-! ### Test layer: edges -/

lemma vnorm_diff_le {xa xb : I6 → ℝ} {sa sb : ℝ} (ha : vnorm xa ≤ sa) (hb : vnorm xb ≤ sb) :
    vnorm (fun j => xa j - xb j) ≤ sa + sb := (vnorm_sub_le xa xb).trans (add_le_add ha hb)

lemma sum_diff_zero {xa xb : I6 → ℝ} (ha : ∑ j, xa j = 0) (hb : ∑ j, xb j = 0) :
    ∑ j, (xa j - xb j) = 0 := by rw [Finset.sum_sub_distrib, ha, hb, sub_zero]

/-- **Direct O test.** -/
theorem edgeOExcl_of_direct {P δ : RMat6} {va vb : I6 → ℝ} {sa sb : ℝ}
    (hviol : 2 * Real.pi * Real.sqrt 6 * (sa + sb) < ‖Se va vb‖) : EdgeOExcl P δ va sa vb sb := by
  intro xa xb ha0 ha hb0 hb _ _ horth
  exact absurd (edge_O (sum_diff_zero ha0 hb0) (vnorm_diff_le ha hb) horth).1 (not_le.mpr hviol)

/-- **Support O test** (centred `D_U`). -/
theorem edgeOExcl_of_support {P δ : RMat6} {va vb : I6 → ℝ} {sa sb : ℝ}
    (hviol : 6 * (sa + sb) * vnorm (DUc va vb) + Real.pi * (sa + sb) ^ 2 * ‖Se va vb‖ <
      ‖Se va vb‖ ^ 2 / (2 * Real.pi)) : EdgeOExcl P δ va sa vb sb := by
  intro xa xb ha0 ha hb0 hb _ _ horth
  exact absurd (edge_O (sum_diff_zero ha0 hb0) (vnorm_diff_le ha hb) horth).2 (not_le.mpr hviol)

/-- **Direct U test.** -/
theorem edgeUExcl_of_direct {P δ : RMat6} {va vb : I6 → ℝ} {sa sb : ℝ}
    (hviol : 2 * Real.pi * Real.sqrt 6 * (sa + sb) < |‖Se va vb‖ - Real.sqrt 6|) : EdgeUExcl P δ va sa vb sb := by
  intro xa xb ha0 ha hb0 hb _ _ hunb
  exact absurd (edge_U (sum_diff_zero ha0 hb0) (vnorm_diff_le ha hb) hunb).1 (not_le.mpr hviol)

/-- **Support U test** (centred `D_U`). -/
theorem edgeUExcl_of_support {P δ : RMat6} {va vb : I6 → ℝ} {sa sb : ℝ}
    (hviol : (sa + sb) * vnorm (DUc va vb) + Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6) <
      |(‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi)|) : EdgeUExcl P δ va sa vb sb := by
  intro xa xb ha0 ha hb0 hb _ _ hunb
  exact absurd (edge_U (sum_diff_zero ha0 hb0) (vnorm_diff_le ha hb) hunb).2 (not_le.mpr hviol)

/-- **Joint U test (6.23)** excludes an edge, for one proposed `(y₀, y₁, y_e)`. -/
theorem edgeUExcl_of_joint {ye : ℝ} {P δ : RMat6} {va vb y0 y1 : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ}
    {ν : RMat6} {n K sa sb r rF rH : ℝ}
    {Yinf0 Y10 G0 SY20 SY10 SYinf0 N0 Yinf1 Y11 G1 SY21 SY11 SYinf1 N1 : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hYinf0 : ∀ i, |y0 i| ≤ Yinf0) (hY10 : ∑ i, |y0 i| ≤ Y10)
    (hG0 : ∀ j, ‖∑ i, (y0 i : ℂ) * star (S P va i) * q P va j i‖ ≤ G0)
    (hSY20 : vnorm (fun i => |y0 i| * ‖S P va i‖) ≤ SY20) (hSY10 : ∑ i, |y0 i| * ‖S P va i‖ ≤ SY10)
    (hSYinf0 : ∀ i, |y0 i| * ‖S P va i‖ ≤ SYinf0) (hN0 : Real.sqrt (∑ i, ∑ j, (y0 i * Jm P va i j) ^ 2) ≤ N0)
    (hYinf1 : ∀ i, |y1 i| ≤ Yinf1) (hY11 : ∑ i, |y1 i| ≤ Y11)
    (hG1 : ∀ j, ‖∑ i, (y1 i : ℂ) * star (S P vb i) * q P vb j i‖ ≤ G1)
    (hSY21 : vnorm (fun i => |y1 i| * ‖S P vb i‖) ≤ SY21) (hSY11 : ∑ i, |y1 i| * ‖S P vb i‖ ≤ SY11)
    (hSYinf1 : ∀ i, |y1 i| * ‖S P vb i‖ ≤ SYinf1) (hN1 : Real.sqrt (∑ i, ∑ j, (y1 i * Jm P vb i j) ^ 2) ≤ N1)
    (hviol : sa * vnorm (fun j => Jty P va y0 j + ye * DU va vb j) + Eball n N0 K sa r rF Yinf0 Y10 G0 SY20 SY10 SYinf0 +
      sb * vnorm (fun j => Jty P vb y1 j - ye * DU va vb j) + Eball n N1 K sb r rF Yinf1 Y11 G1 SY21 SY11 SYinf1 +
      rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) +
      Real.pi * (sa + sb) ^ 2 * (1 + ‖Se va vb‖ / 6) * |ye| <
      |∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i + ye * ((‖Se va vb‖ ^ 2 / 6 - 1) / (4 * Real.pi))|) :
    EdgeUExcl P δ va sa vb sb := by
  intro xa xb _ ha _ hb hca hcb hunb
  exact absurd (joint_U hδ hη hν hr hrF hK0 hK ha hb hca hcb hunb hYinf0 hY10 hG0 hSY20 hSY10 hSYinf0 hN0
    hYinf1 hY11 hG1 hSY21 hSY11 hSYinf1 hN1) (not_le.mpr hviol)

/-- **Joint O test (6.23)** excludes an edge, for one proposed `(y₀, y₁, y_e)`, `y_e = (y₁ₑ, y₂ₑ)`. -/
theorem edgeOExcl_of_joint {ye1 ye2 : ℝ} {P δ : RMat6} {va vb y0 y1 : I6 → ℝ} {T : Fin 4 → RMat6} {η : Fin 4 → ℝ}
    {ν : RMat6} {n K sa sb r rF rH : ℝ}
    {Yinf0 Y10 G0 SY20 SY10 SYinf0 N0 Yinf1 Y11 G1 SY21 SY11 SYinf1 N1 : ℝ}
    (hδ : δ = (∑ k, η k • T k) + ν) (hη : Real.sqrt (∑ k, η k ^ 2) ≤ rH) (hν : frob ν ≤ n)
    (hr : ∀ i, colnorm δ i ≤ r) (hrF : frob δ ≤ rF) (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop P z) ≤ K * cnorm z)
    (hYinf0 : ∀ i, |y0 i| ≤ Yinf0) (hY10 : ∑ i, |y0 i| ≤ Y10)
    (hG0 : ∀ j, ‖∑ i, (y0 i : ℂ) * star (S P va i) * q P va j i‖ ≤ G0)
    (hSY20 : vnorm (fun i => |y0 i| * ‖S P va i‖) ≤ SY20) (hSY10 : ∑ i, |y0 i| * ‖S P va i‖ ≤ SY10)
    (hSYinf0 : ∀ i, |y0 i| * ‖S P va i‖ ≤ SYinf0) (hN0 : Real.sqrt (∑ i, ∑ j, (y0 i * Jm P va i j) ^ 2) ≤ N0)
    (hYinf1 : ∀ i, |y1 i| ≤ Yinf1) (hY11 : ∑ i, |y1 i| ≤ Y11)
    (hG1 : ∀ j, ‖∑ i, (y1 i : ℂ) * star (S P vb i) * q P vb j i‖ ≤ G1)
    (hSY21 : vnorm (fun i => |y1 i| * ‖S P vb i‖) ≤ SY21) (hSY11 : ∑ i, |y1 i| * ‖S P vb i‖ ≤ SY11)
    (hSYinf1 : ∀ i, |y1 i| * ‖S P vb i‖ ≤ SYinf1) (hN1 : Real.sqrt (∑ i, ∑ j, (y1 i * Jm P vb i j) ^ 2) ≤ N1)
    (hviol : sa * vnorm (fun j => Jty P va y0 j + (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) +
      Eball n N0 K sa r rF Yinf0 Y10 G0 SY20 SY10 SYinf0 +
      sb * vnorm (fun j => Jty P vb y1 j - (ye1 * -(Qe va vb j).im + ye2 * (Qe va vb j).re)) +
      Eball n N1 K sb r rF Yinf1 Y11 G1 SY21 SY11 SYinf1 +
      rH * Real.sqrt (∑ k, (Bty P va y0 T k + Bty P vb y1 T k) ^ 2) +
      Real.sqrt (ye1 ^ 2 + ye2 ^ 2) * (Real.pi * (sa + sb) ^ 2) <
      |∑ i, y0 i * cc P va i + ∑ i, y1 i * cc P vb i +
        (ye1 * ((Se va vb).re / (2 * Real.pi)) + ye2 * ((Se va vb).im / (2 * Real.pi)))|) :
    EdgeOExcl P δ va sa vb sb := by
  intro xa xb _ ha _ hb hca hcb horth
  exact absurd (joint_O hδ hη hν hr hrF hK0 hK ha hb hca hcb horth hYinf0 hY10 hG0 hSY20 hSY10 hSYinf0 hN0
    hYinf1 hY11 hG1 hSY21 hSY11 hSYinf1 hN1) (not_le.mpr hviol)

end NoFourMUBs.StageC
