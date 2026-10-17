import NoFourMUBs.L1.SideJacobian
import NoFourMUBs.L1.FlatBridge
import NoFourMUBs.PRM.SideRoot
import NoFourMUBs.Step2.BaseAnchor
import NoFourMUBs.Step2.TopologyCore

/-!
# Side existence at strict seeds

Handoff J, route A (`proof/coverage/returns/J_side_existence`).  For a strict seed `ρ` (unit
entries, `R > 0`), each of the two side Grams `G_h(ρ) = (s, t, r)` and `G_v(ρ)` is realised by a normalised
phase side with either sign of `Im T` (`side_h_mem`, `side_v_mem`), hence with signature either root `ζ` of
the sheet quadratic (`exists_side_h`, `exists_side_v`).

Proof, for `G_h` and `ε = +1`: the set `U` of strict seeds whose `G_h` lies in `sideSet 1` is open (inverse
function theorem, `isOpen_sideSet`), and closed in the strict seeds: it equals the preimage of the closed
`sideSetC 1`, since a side realising Gram data with `R > 0` has `Im T ≠ 0` (`im_ne_of_gR`, from Lemma 2.1
`RS_eq_im_sq`).  `U` contains the 18 maxima of `R` (`Step1Geo.maximumCensus`): at each, the matched
completion transported from `H₀` (`BaseAnchor.matched_H0`, `matched_moveWord`) has a horizontal side with
`Im T = √R / 2 > 0` (`sides_of_matched`).  So `U` is every strict seed
(`Step2.TopologyCore.superlevel_clopen_eq_univ`).  The vertical side of a matched completion has `Im T < 0`,
which gives `G_v` with `ε = −1`.  Conjugating the seed and the side gives the other sign (`sideSet_conj`).
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.Step1Geo

noncomputable section

namespace NoFourMUBs.L1

open FlatCircuits

/-- Two roots of the same real quadratic. -/
theorem eq_or_eq_conj_of_roots {w ζ P S : ℂ} (hw1 : w * conj w = P) (hw2 : w + conj w = S)
    (hz1 : ζ * conj ζ = P) (hz2 : ζ + conj ζ = S) : w = ζ ∨ w = conj ζ := by
  have : (w - ζ) * (w - conj ζ) = 0 := by linear_combination hz1 - hw1 - w * hz2 + w * hw2
  rcases mul_eq_zero.1 this with h | h
  · exact Or.inl (sub_eq_zero.1 h)
  · exact Or.inr (sub_eq_zero.1 h)

/-! ### Corner Gram data from unit entries -/

variable {ρ : Fin 4 → ℂ}

theorem G_eq' (hu : ∀ i, Complex.normSq (ρ i) = 1) : Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ =
    !![3, conj (sh ρ), conj (th ρ); sh ρ, 3, conj (rh ρ); th ρ, rh ρ, 3] := by
  have n : ∀ i, ρ i * conj (ρ i) = 1 := fun i => by rw [Complex.mul_conj, hu i, Complex.ofReal_one]
  ext i j
  simp only [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Complex.star_def, smul_eq_mul]
  fin_cases i <;> fin_cases j <;>
    simp [Em, Hadamard6.corner, sh, th, rh] <;>
    (first
      | ring1
      | linear_combination (-1 : ℂ) * n 0 - n 1
      | linear_combination (-1 : ℂ) * n 2 - n 3)

theorem Gv_eq' (hu : ∀ i, Complex.normSq (ρ i) = 1) : Hadamard6.sixI3 - (Em ρ)ᴴ * Em ρ =
    !![3, sv ρ, tv ρ; conj (sv ρ), 3, rv ρ; conj (tv ρ), conj (rv ρ), 3] := by
  have n : ∀ i, ρ i * conj (ρ i) = 1 := fun i => by rw [Complex.mul_conj, hu i, Complex.ofReal_one]
  have n' : ∀ i, conj (ρ i) * ρ i = 1 := fun i => by rw [mul_comm]; exact n i
  ext i j
  simp only [Hadamard6.sixI3, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
    Fin.sum_univ_three, Matrix.conjTranspose_apply, Complex.star_def, smul_eq_mul]
  fin_cases i <;> fin_cases j <;>
    simp [Em, Hadamard6.corner, sv, tv, rv] <;>
    (first
      | ring1
      | linear_combination (-1 : ℂ) * n' 0 - n' 2
      | linear_combination (-1 : ℂ) * n' 1 - n' 3)

/-! ### The two descriptions of the invariants agree -/

theorem jS_eq (s t r : ℂ) : jS s t r = gJ s t r := by
  simp only [jS, gJ]
  rw [← Complex.conj_re]; simp [map_mul]

theorem etaS_eq (s t r : ℂ) : etaS s t r = gEta s t r := by
  simp only [etaS, gEta, pS, gPs, gX, jS_eq]

theorem chiS_eq (s t r : ℂ) : chiS s t r = gChi s t r := by
  simp only [chiS, gChi, pS, gPs, gX, jS_eq]

theorem RS_eq (s t r : ℂ) : RS s t r = gR s t r := by
  simp only [RS, gR, gS_eq, etaS_eq, chiS_eq]

/-! ### Regularity: `R > 0` forces `Im T ≠ 0` -/

theorem im_ne_of_gR {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hR : 0 < gR (sS x) (sS y) (rS x y)) : (TS x y).im ≠ 0 := by
  have hg : gG (sS x) (sS y) (rS x y) ≠ 0 := by
    intro h0; unfold gR at hR; rw [h0] at hR; nlinarith [sq_nonneg (gChi (sS x) (sS y) (rS x y))]
  have hh : hS x y ≠ 0 := by
    obtain ⟨-, -, -, G⟩ := side_identities hx hy
    rw [gS_eq] at G
    intro h0; rw [h0, map_zero, Complex.ofReal_zero] at G
    exact hg (by exact_mod_cast G.symm)
  have h4 := RS_eq_im_sq hx hy hh
  rw [RS_eq] at h4
  intro h0; rw [h0] at h4; linarith

/-! ### Conjugation -/

/-- Entrywise conjugate Gram data. -/
def conj3 (g : ℂ × ℂ × ℂ) : ℂ × ℂ × ℂ := (conj g.1, conj g.2.1, conj g.2.2)

/-- Conjugating a side conjugates its Gram data and flips the sign of `Im T`. -/
theorem sideSet_conj {ε : ℝ} {g : ℂ × ℂ × ℂ} (hg : g ∈ sideSet ε) : conj3 g ∈ sideSet (-ε) := by
  obtain ⟨x, y, hx, hy, rfl, h⟩ := hg
  refine ⟨fun j => conj (x j), fun j => conj (y j), fun j => by rw [Complex.normSq_conj]; exact hx j,
    fun j => by rw [Complex.normSq_conj]; exact hy j, ?_, ?_⟩
  · simp [conj3, gram, sS, rS, map_add, map_mul]
  · have : TS (fun j => conj (x j)) (fun j => conj (y j)) = conj (TS x y) := by
      simp [TS, piS, hS, uS, map_add, map_mul, map_sub, map_neg, map_pow]
    rw [this, Complex.conj_im]; linarith

/-! ### Seeds -/

/-- The four seed phases as complex numbers. -/
def seedVec (p : Seed) : Fin 4 → ℂ := fun i => (p i : ℂ)

/-- The horizontal and vertical side Grams of a seed point. -/
def Gh (ρ : Fin 4 → ℂ) : ℂ × ℂ × ℂ := (sh ρ, th ρ, rh ρ)
def Gv (ρ : Fin 4 → ℂ) : ℂ × ℂ × ℂ := (sv ρ, tv ρ, rv ρ)

theorem seedR_eq_gR (p : Seed) :
    seedR p = gR (sh (seedVec p)) (th (seedVec p)) (rh (seedVec p)) := rfl

theorem strict_seedVec {p : Seed} (hp : 0 < seedR p) : Strict (seedVec p) :=
  ⟨fun _ => Circle.normSq_coe _, hp⟩

theorem continuous_Gh : Continuous fun p : Seed => Gh (seedVec p) := by
  unfold Gh sh th rh seedVec; fun_prop

theorem continuous_Gv : Continuous fun p : Seed => Gv (seedVec p) := by
  unfold Gv sv tv rv seedVec; fun_prop

theorem Gh_conj (ρ : Fin 4 → ℂ) : Gh (fun i => conj (ρ i)) = conj3 (Gh ρ) := by
  simp [Gh, conj3, sh, th, rh, map_add, map_mul]

theorem Gv_conj (ρ : Fin 4 → ℂ) : Gv (fun i => conj (ρ i)) = conj3 (Gv ρ) := by
  simp [Gv, conj3, sv, tv, rv, map_add, map_mul]

theorem gR_conj (s t r : ℂ) : gR (conj s) (conj t) (conj r) = gR s t r := by
  have hJ : gJ (conj s) (conj t) (conj r) = gJ s t r := by
    simp only [gJ, Complex.conj_conj]
    rw [← Complex.conj_re (s * r * conj t)]
    simp [map_mul]
  simp only [gR, gG, gEta, gChi, gPs, gX, hJ, Complex.normSq_conj]

/-- A strict seed from unit phases. -/
theorem exists_seed (hu : ∀ i, Complex.normSq (ρ i) = 1) : ∃ p : Seed, seedVec p = ρ := by
  refine ⟨fun i => Circle.exp (Complex.arg (ρ i)), funext fun i => ?_⟩
  simp only [seedVec, Circle.coe_exp]
  exact ex_arg (hu i)

/-! ### The anchors -/

/-- Every anchor has a matched completion, transported from `H₀`. -/
theorem anchor_matched {s : StrictSeed} (hs : s ∈ anchors) : ∃ H : Had6, Matched s H := by
  simp only [anchors, Finset.mem_image, Finset.mem_univ, true_and] at hs
  obtain ⟨n, rfl⟩ := hs
  obtain ⟨K, hK, -⟩ := matched_moveWord (wordOf n) (anchor_pos (0, true, 0, 0)) BaseAnchor.matched_H0
  have : (⟨anchorSeed n, anchor_pos n⟩ : StrictSeed) =
      ⟨moveWord (wordOf n) (anchorSeed (0, true, 0, 0)), by rw [seedR_moveWord]; exact anchor_pos _⟩ :=
    Subtype.ext (anchorSeed_eq n)
  rw [this]; exact ⟨K, hK⟩

/-- The sides of a matched completion: the horizontal one has `Im T > 0`, the vertical one `Im T < 0`. -/
theorem sides_of_matched {s : StrictSeed} {H : Had6} (hH : Matched s H) :
    Gh (seedVec s.1) ∈ sideSet 1 ∧ Gv (seedVec s.1) ∈ sideSet (-1) := by
  set ρ := seedVec s.1
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => Circle.normSq_coe _
  obtain ⟨hd, hlead, hB, hC⟩ := hH
  have hE : Matrix.toBlocks₁₁ H.1 = Em ρ := by
    rw [show Matrix.toBlocks₁₁ H.1 = leadingBlock H.1 from rfl, hlead]; rfl
  have hs : 0 < Real.sqrt (seedR s.1) := Real.sqrt_pos.2 s.2
  constructor
  · set B := rightBlock H.1
    have hB0 : ∀ j, B 0 j = 1 := fun j => hd.1 (.inr j)
    have gB : B * Bᴴ = Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ := by
      have := (Hadamard6.hadamard_row_block_grams H.2).1
      rw [hE] at this
      rw [← this]; abel_nf; rfl
    obtain ⟨g1, g2, g3⟩ := gram_rows B hB0
    rw [gB, G_eq' hu] at g1 g2 g3
    refine ⟨B 1, B 2, fun j => H.2.1 _ _, fun j => H.2.1 _ _, ?_, ?_⟩
    · simp only [gram, Gh, ← g1, ← g2, ← g3]; rfl
    · rw [← sig_rows B hB0]
      have := congrArg Complex.im hB
      simp at this
      linarith
  · set C := lowerBlock H.1
    have hC0 : ∀ i, C i 0 = 1 := fun i => hd.2 (.inr i)
    have gC : Cᴴ * C = Hadamard6.sixI3 - (Em ρ)ᴴ * Em ρ := by
      have := (Hadamard6.hadamard_column_block_grams H.2).1
      rw [hE] at this
      rw [← this]; abel_nf; rfl
    obtain ⟨c1, c2, c3⟩ := gram_cols C hC0
    rw [gC, Gv_eq' hu] at c1 c2 c3
    refine ⟨fun j => C j 1, fun j => C j 2, fun j => H.2.1 _ _, fun j => H.2.1 _ _, ?_, ?_⟩
    · simp only [gram, Gv, ← c1, ← c2, ← c3]; rfl
    · rw [← sig_cols C hC0]
      have := congrArg Complex.im hC
      simp at this
      linarith

/-! ### The covering argument -/

/-- **Clopen/maximum argument.**  If a continuous Gram function `G` of the seed has `R > 0` at strict
seeds and is realised with `ε Im T > 0` at the 18 anchors, it is so realised at every strict seed. -/
theorem cover {G : (Fin 4 → ℂ) → ℂ × ℂ × ℂ} (hG : Continuous fun p : Seed => G (seedVec p)) {ε : ℝ}
    (hε : ε ≠ 0)
    (hreg : ∀ p : Seed, 0 < seedR p → 0 < gR (G (seedVec p)).1 (G (seedVec p)).2.1 (G (seedVec p)).2.2)
    (hanch : ∀ s ∈ anchors, G (seedVec s.1) ∈ sideSet ε) :
    ∀ p : Seed, 0 < seedR p → G (seedVec p) ∈ sideSet ε := by
  set U : Set StrictSeed := {s | G (seedVec s.1) ∈ sideSet ε}
  have hcont : Continuous fun s : StrictSeed => G (seedVec s.1) := hG.comp continuous_subtype_val
  have hU : IsClopen U := by
    constructor
    · have : U = {s : StrictSeed | G (seedVec s.1) ∈ sideSetC ε} := by
        ext s
        constructor
        · rintro ⟨x, y, hx, hy, hg, h⟩; exact ⟨x, y, hx, hy, hg, h.le⟩
        · rintro ⟨x, y, hx, hy, hg, h⟩
          refine ⟨x, y, hx, hy, hg, lt_of_le_of_ne h ?_⟩
          have hR := hreg s.1 s.2
          rw [← hg] at hR
          exact (mul_ne_zero hε (im_ne_of_gR hx hy hR)).symm
      rw [this]; exact (isClosed_sideSetC ε).preimage hcont
    · exact (isOpen_sideSet ε).preimage hcont
  have key := Step2.TopologyCore.superlevel_clopen_eq_univ seedR continuous_seedR U hU
    (fun p hp hmax => hanch _ (maximumCensus p hp hmax))
  intro p hp
  have : (⟨p, hp⟩ : StrictSeed) ∈ U := by rw [key]; trivial
  exact this

/-! ### Side existence -/

theorem conj3_conj3 (g : ℂ × ℂ × ℂ) : conj3 (conj3 g) = g := by simp [conj3]

/-- The conjugate seed. -/
def conjSeed (p : Seed) : Seed := fun i => (p i)⁻¹

theorem seedVec_conj (p : Seed) : seedVec (conjSeed p) = fun i => conj (seedVec p i) :=
  funext fun _ => Circle.coe_inv_eq_conj _

theorem seedR_conj (p : Seed) : seedR (conjSeed p) = seedR p := by
  have e := congrArg (fun g => gR g.1 g.2.1 g.2.2) (Gh_conj (seedVec p))
  simp only [Gh, conj3, gR_conj] at e
  rw [seedR_eq_gR, seedR_eq_gR, seedVec_conj, e]

/-- From one sign at every strict seed, the other sign by conjugating seed and side. -/
theorem mem_of_conj {G : (Fin 4 → ℂ) → ℂ × ℂ × ℂ} (hG : ∀ ρ, G (fun i => conj (ρ i)) = conj3 (G ρ))
    {ε : ℝ} (h : ∀ p : Seed, 0 < seedR p → G (seedVec p) ∈ sideSet ε) (p : Seed) (hp : 0 < seedR p) :
    G (seedVec p) ∈ sideSet (-ε) := by
  have := sideSet_conj (h (conjSeed p) (by rw [seedR_conj]; exact hp))
  rwa [seedVec_conj, hG, conj3_conj3] at this

theorem side_h_mem (h : Strict ρ) : Gh ρ ∈ sideSet 1 ∧ Gh ρ ∈ sideSet (-1) := by
  have hpos : ∀ p : Seed, 0 < seedR p → Gh (seedVec p) ∈ sideSet 1 :=
    cover continuous_Gh one_ne_zero (fun p hp => hp)
      (fun s hs => (sides_of_matched (anchor_matched hs).choose_spec).1)
  obtain ⟨p, rfl⟩ := exists_seed h.unit
  exact ⟨hpos p h.R, mem_of_conj Gh_conj hpos p h.R⟩

theorem side_v_mem (h : Strict ρ) : Gv ρ ∈ sideSet 1 ∧ Gv ρ ∈ sideSet (-1) := by
  have hneg : ∀ p : Seed, 0 < seedR p → Gv (seedVec p) ∈ sideSet (-1) :=
    cover continuous_Gv (by norm_num) (fun p hp => (strict_seedVec hp).facts.2.1)
      (fun s hs => (sides_of_matched (anchor_matched hs).choose_spec).2)
  obtain ⟨p, rfl⟩ := exists_seed h.unit
  have := mem_of_conj Gv_conj hneg p h.R
  rw [neg_neg] at this
  exact ⟨this, hneg p h.R⟩

/-- Gram data realised with both signs of `Im T` is realised with signature either root `ζ`. -/
theorem exists_side_of_mem {s t r ζ : ℂ} (hR : 0 < gR s t r) (h1 : (s, t, r) ∈ sideSet 1)
    (h2 : (s, t, r) ∈ sideSet (-1))
    (hζ : ζ ^ 2 = (gChi s t r : ℂ) * ζ - ((gG s t r : ℝ) : ℂ) ^ 2 * (gEta s t r : ℂ))
    (hζc : conj ζ = (gChi s t r : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = s ∧ sS y = t ∧ rS x y = r ∧ TS x y = ζ := by
  have hz1 : ζ * conj ζ = ((gG s t r : ℝ) : ℂ) ^ 2 * (gEta s t r : ℂ) := by
    rw [hζc]; linear_combination -hζ
  have hz2 : ζ + conj ζ = (gChi s t r : ℂ) := by rw [hζc]; ring
  have hζim : ζ.im ≠ 0 := by
    intro h0
    have hr : conj ζ = ζ := Complex.conj_eq_iff_im.2 h0
    rw [hr] at hz1 hz2
    have : ((gR s t r : ℝ) : ℂ) = 0 := by
      push_cast [gR]
      linear_combination (-4 : ℂ) * hz1 + ((gChi s t r : ℂ) + 2 * ζ) * hz2
    exact hR.ne' (by exact_mod_cast this)
  obtain ⟨x, y, hx, hy, hg, hsgn⟩ : ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧
      (∀ j, Complex.normSq (y j) = 1) ∧ gram x y = (s, t, r) ∧ 0 < ζ.im * (TS x y).im := by
    rcases lt_or_gt_of_ne hζim with hn | hp
    · obtain ⟨x, y, hx, hy, hg, h⟩ := h2; exact ⟨x, y, hx, hy, hg, by nlinarith⟩
    · obtain ⟨x, y, hx, hy, hg, h⟩ := h1; exact ⟨x, y, hx, hy, hg, by nlinarith⟩
  simp only [gram, Prod.mk.injEq] at hg
  obtain ⟨hs, ht, hr⟩ := hg
  have hT : (TS x y).im ≠ 0 := fun h0 => by rw [h0, mul_zero] at hsgn; exact lt_irrefl _ hsgn
  have hh : hS x y ≠ 0 := by intro h0; apply hT; simp [TS, h0]
  obtain ⟨r1, r2⟩ := TS_root hx hy hh
  simp only [hs, ht, hr, gS_eq, etaS_eq, chiS_eq] at r1 r2
  refine ⟨x, y, hx, hy, hs, ht, hr, ?_⟩
  rcases eq_or_eq_conj_of_roots r1 r2 hz1 hz2 with e | e
  · exact e
  · rw [e, Complex.conj_im] at hsgn; nlinarith [sq_nonneg ζ.im]

/-- **Side existence (horizontal).** At a strict seed, the horizontal Gram data `(s, t, r)` is realised by
a normalised phase side with signature either root `ζ` of `ζ² = χ ζ − g² η`. -/
theorem exists_side_h (h : Strict ρ) {ζ : ℂ}
    (hζ : ζ ^ 2 = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) * ζ -
      ((gG (sh ρ) (th ρ) (rh ρ) : ℝ) : ℂ) ^ 2 * (gEta (sh ρ) (th ρ) (rh ρ) : ℂ))
    (hζc : conj ζ = (gChi (sh ρ) (th ρ) (rh ρ) : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = sh ρ ∧ sS y = th ρ ∧ rS x y = rh ρ ∧ TS x y = ζ :=
  exists_side_of_mem h.R (side_h_mem h).1 (side_h_mem h).2 hζ hζc

/-- **Side existence (vertical).** The same for the vertical Gram data. -/
theorem exists_side_v (h : Strict ρ) {ζ : ℂ}
    (hζ : ζ ^ 2 = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) * ζ -
      ((gG (sv ρ) (tv ρ) (rv ρ) : ℝ) : ℂ) ^ 2 * (gEta (sv ρ) (tv ρ) (rv ρ) : ℂ))
    (hζc : conj ζ = (gChi (sv ρ) (tv ρ) (rv ρ) : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = sv ρ ∧ sS y = tv ρ ∧ rS x y = rv ρ ∧ TS x y = ζ :=
  exists_side_of_mem h.facts.2.1 (side_v_mem h).1 (side_v_mem h).2 hζ hζc

end NoFourMUBs.L1
