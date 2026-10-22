import NoFourMUBs.L1.SideJacobian
import NoFourMUBs.L1.FlatBridge
import NoFourMUBs.PRM.SideRoot
import NoFourMUBs.Step2.MatchedUnique

/-!
# Side existence at strict seeds: the open and closed set

Handoff J, route A (`proof/coverage/returns/J_side_existence`), with the anchor of return Q
(`proof/coverage/returns/Q_fourier_anchor`); the existence half of `MinimalConstruction/Proofs/SIDE_FIBER.md`
(a side on each root), proved here without its explicit formulas.

For a strict seed `ρ` (unit entries, `R > 0`), let `G_h(ρ) = (s, t, r)` and `G_v(ρ)` be the two side Grams.  The set
of strict seeds where `G_h` is realised by a normalised phase side with `Im T > 0` and `G_v` by one with `Im T < 0`
is open and closed in the strict seeds (`isClopen_sides`).  Open: inverse function theorem (`isOpen_sideSet`).
Closed: it is the preimage of the closed `sideSetC`, since a side realising Gram data with `R > 0` has `Im T ≠ 0`
(`im_ne_of_gR`, from `PROOF.md` Lemma 2.1, `RS_eq_im_sq`).  The sides of a matched completion are such sides
(`sides_of_matched`), and a side with signature a given root `ζ` of the sheet quadratic is obtained from a side
with the same sign of `Im T` (`exists_side_of_sign`).

`Existence` shows that this set is every strict seed: it contains the corner of the Fourier family
(`Step2.exists_matched`), and the strict seeds are connected (`Step2.isConnected_strict`).  Sides give a matched
completion (`L1.matched_of_sides`).  Conjugating the seed and the side gives the other sign (`sideSet_conj`).
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2

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

/-! ### The open and closed set -/

/-- If a continuous Gram function `G` of the seed has `R > 0` at strict seeds, the strict seeds where it is
realised with `ε Im T > 0` form an open and closed set. -/
theorem isClopen_side {G : (Fin 4 → ℂ) → ℂ × ℂ × ℂ} (hG : Continuous fun p : Seed => G (seedVec p)) {ε : ℝ}
    (hε : ε ≠ 0)
    (hreg : ∀ p : Seed, 0 < seedR p → 0 < gR (G (seedVec p)).1 (G (seedVec p)).2.1 (G (seedVec p)).2.2) :
    IsClopen {s : StrictSeed | G (seedVec s.1) ∈ sideSet ε} := by
  have hcont : Continuous fun s : StrictSeed => G (seedVec s.1) := hG.comp continuous_subtype_val
  constructor
  · have : {s : StrictSeed | G (seedVec s.1) ∈ sideSet ε} = {s : StrictSeed | G (seedVec s.1) ∈ sideSetC ε} := by
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

/-- The strict seeds whose horizontal Gram is realised with `Im T > 0` and vertical Gram with `Im T < 0`. -/
def SidesSet : Set StrictSeed :=
  {s | Gh (seedVec s.1) ∈ sideSet 1 ∧ Gv (seedVec s.1) ∈ sideSet (-1)}

theorem isClopen_sides : IsClopen SidesSet :=
  (isClopen_side continuous_Gh one_ne_zero (fun _ hp => hp)).inter
    (isClopen_side continuous_Gv (by norm_num) (fun p hp => (strict_seedVec hp).facts.2.1))

/-! ### Conjugation of seeds -/

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

/-! ### A side with a given signature -/

/-- Gram data realised with `ε Im T > 0` is realised with signature any root `ζ` with `ε Im ζ > 0`. -/
theorem exists_side_of_sign {s t r ζ : ℂ} {ε : ℝ} (hmem : (s, t, r) ∈ sideSet ε) (hsgn : 0 < ε * ζ.im)
    (hζ : ζ ^ 2 = (gChi s t r : ℂ) * ζ - ((gG s t r : ℝ) : ℂ) ^ 2 * (gEta s t r : ℂ))
    (hζc : conj ζ = (gChi s t r : ℂ) - ζ) :
    ∃ x y : Fin 3 → ℂ, (∀ j, Complex.normSq (x j) = 1) ∧ (∀ j, Complex.normSq (y j) = 1) ∧
      sS x = s ∧ sS y = t ∧ rS x y = r ∧ TS x y = ζ := by
  have hz1 : ζ * conj ζ = ((gG s t r : ℝ) : ℂ) ^ 2 * (gEta s t r : ℂ) := by
    rw [hζc]; linear_combination -hζ
  have hz2 : ζ + conj ζ = (gChi s t r : ℂ) := by rw [hζc]; ring
  obtain ⟨x, y, hx, hy, hg, hT⟩ := hmem
  have hsgn' : 0 < ζ.im * (TS x y).im := by
    by_contra hc
    nlinarith [mul_pos hsgn hT, sq_nonneg ε]
  simp only [gram, Prod.mk.injEq] at hg
  obtain ⟨hs, ht, hr⟩ := hg
  have hT0 : (TS x y).im ≠ 0 := fun h0 => by rw [h0, mul_zero] at hsgn'; exact lt_irrefl _ hsgn'
  have hh : hS x y ≠ 0 := by intro h0; apply hT0; simp [TS, h0]
  obtain ⟨r1, r2⟩ := TS_root hx hy hh
  simp only [hs, ht, hr, gS_eq, etaS_eq, chiS_eq] at r1 r2
  refine ⟨x, y, hx, hy, hs, ht, hr, ?_⟩
  rcases eq_or_eq_conj_of_roots r1 r2 hz1 hz2 with e | e
  · exact e
  · rw [e, Complex.conj_im] at hsgn'; nlinarith [sq_nonneg ζ.im]

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
  rcases lt_or_gt_of_ne hζim with hn | hp
  · exact exists_side_of_sign h2 (by linarith) hζ hζc
  · exact exists_side_of_sign h1 (by linarith) hζ hζc

end NoFourMUBs.L1
