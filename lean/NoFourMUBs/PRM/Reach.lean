import NoFourMUBs.PRM.Converse

/-!
# Exact reach and density from strict-corner coverage (`PROOF.md` Corollary 2.6)

`PRM.md` §7.3; `exactReach` is `PROOF.md` Corollary 2.6, with strict-corner coverage (Theorem 2.5) as
hypothesis.  If every Hadamard matrix not equivalent to `F6` has a strict positional corner
(`StrictCornerCoverage`, MC1), then every non-Tao class is `[F6]` or a matched class or its conjugate
(`MatchedExactReach`): dephase at the strict corner, Theorem A makes it matched, and conjugating if needed
makes the horizontal signature the positive root.  Hence `MatchedDensityReach`.
-/

open ComplexConjugate Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Kronecker

noncomputable section

namespace NoFourMUBs.PRM

open L1 L1.FlatCircuits

/-! ### Exact reach -/

def toCircle (z : ℂ) (h : Complex.normSq z = 1) : Circle :=
  ⟨z, by rw [Submonoid.unitSphere, Submonoid.mem_mk, Subsemigroup.mem_mk, mem_sphere_zero_iff_norm,
    Complex.norm_def, h, Real.sqrt_one]⟩

theorem sideSignature_map_conj (B : Mat3) :
    Step2.sideSignature (B.map conj) = conj (Step2.sideSignature B) := by
  simp only [Step2.sideSignature, Step2.permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    Matrix.map_apply, map_mul, map_neg, map_pow, map_add, map_sub, Complex.star_def]

/-- A dephased Hadamard matrix whose leading corner is matched with positive-imaginary horizontal
signature is matched for the seed of its corner. -/
theorem matched_of_pos (K : Had6) (hd : Step2.Dephased K.1)
    (hpos : 0 < (Step2.sideSignature (Step2.rightBlock K.1)).im)
    (hm : Step2.sideSignature (Step2.lowerBlock K.1) = conj (Step2.sideSignature (Step2.rightBlock K.1))) :
    ∃ s : Step2.StrictSeed, Step2.Matched s K := by
  obtain ⟨M, hM⟩ := K
  replace hd : Step2.Dephased M := hd
  set ρ : Fin 4 → ℂ := ![M (.inl 1) (.inl 1), M (.inl 1) (.inl 2), M (.inl 2) (.inl 1), M (.inl 2) (.inl 2)]
  have hu : ∀ i, Complex.normSq (ρ i) = 1 := fun i => by fin_cases i <;> exact hM.1 _ _
  let p : Step2.Seed := fun i => toCircle (ρ i) (hu i)
  have hpρ : (fun i => (p i : ℂ)) = ρ := rfl
  have hE : Matrix.toBlocks₁₁ M = Em ρ := by
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.toBlocks₁₁, Em, Hadamard6.corner, ρ, hd.1 (.inl _), hd.2 (.inl _)]
  set B := Step2.rightBlock M
  set x : Fin 3 → ℂ := B 1
  set y : Fin 3 → ℂ := B 2
  have hB0 : ∀ j, B 0 j = 1 := fun j => hd.1 (.inr j)
  have hx : ∀ j, Complex.normSq (x j) = 1 := fun j => hM.1 _ _
  have hy : ∀ j, Complex.normSq (y j) = 1 := fun j => hM.1 _ _
  have gB : B * Bᴴ = Hadamard6.sixI3 - Em ρ * (Em ρ)ᴴ := by
    have := (Hadamard6.hadamard_row_block_grams hM).1
    rw [hE] at this
    rw [← this]; abel_nf; rfl
  obtain ⟨g1, g2, g3⟩ := Step2.gram_rows B hB0
  rw [gB, G_eq' hu] at g1 g2 g3
  have hs : sS x = sh ρ := by rw [← g1]; rfl
  have ht : sS y = th ρ := by rw [← g2]; rfl
  have hr : rS x y = rh ρ := by rw [← g3]; rfl
  set ζ := TS x y with hζdef
  have sigB : Step2.sideSignature B = ζ := Step2.sig_rows B hB0
  rw [sigB] at hpos hm
  have hh : hS x y ≠ 0 := by
    intro h0
    have : ζ = 0 := by simp [ζ, TS, h0]
    rw [this] at hpos; simp at hpos
  have hRS := RS_eq_im_sq hx hy hh
  obtain ⟨-, r2⟩ := TS_root hx hy hh
  rw [hs, ht, hr, RS_eq] at hRS
  rw [hs, ht, hr, chiS_eq] at r2
  have hR : 0 < Step2.seedR p := by
    rw [L1.seedR_eq, hpρ, hRS]; positivity
  refine ⟨⟨p, hR⟩, ⟨hd, ?_, ?_, ?_⟩⟩
  · ext i j
    show M (.inl i) (.inl j) = _
    fin_cases i <;> fin_cases j <;>
      simp [Step2.seedCorner, Hadamard6.corner, p, toCircle, ρ, hd.1 (.inl _), hd.2 (.inl _)]
  · have hsq : Real.sqrt (Step2.seedR p) = 2 * ζ.im := by
      rw [L1.seedR_eq, hpρ, hRS, show 4 * ζ.im ^ 2 = (2 * ζ.im) ^ 2 by ring, Real.sqrt_sq (by linarith)]
    rw [show Step2.sideSignature (Step2.rightBlock M) = ζ from sigB, L1.seedChi_eq, hpρ, hsq, ← r2]
    apply Complex.ext <;> simp; ring
  · have hsq : Real.sqrt (Step2.seedR p) = 2 * ζ.im := by
      rw [L1.seedR_eq, hpρ, hRS, show 4 * ζ.im ^ 2 = (2 * ζ.im) ^ 2 by ring, Real.sqrt_sq (by linarith)]
    rw [hm, L1.seedChi_eq, hpρ, hsq, ← r2]
    apply Complex.ext <;> simp; ring

/-- **Exact reach** from strict-corner coverage and Theorem A. -/
theorem exactReach (hcov : StrictCornerCoverage) : Step2.MatchedExactReach := by
  intro H hT
  by_cases hF : Equivalent H.1 Step2.fourierHadamard.1
  · exact Or.inl hF
  right
  obtain ⟨σ, τ, hIm⟩ := hcov H.1 H.2 hF
  set H1 := H.1.submatrix σ τ
  have e1 : Equivalent H.1 H1 := ⟨σ, τ, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp,
    fun i j => by simp [H1]⟩
  have hH1 : Hadamard6.IsHadamard H1 := isHadamard_of_equivalent e1 H.2
  set K := dephase H1
  have hK : Hadamard6.IsHadamard K := dephase_isHadamard hH1
  have hKd : Step2.Dephased K := dephase_isDephased hH1.1
  have eK : Equivalent H.1 K := equivalent_trans e1 (equivalent_dephase hH1.1)
  have sigK : Step2.sideSignature (Step2.rightBlock K) = Step2.sideSignature (Step2.rightBlock H1) := by
    have : Step2.rightBlock K = Matrix.of fun i j => dephaseRowFactor H1 (.inl i) *
        Step2.rightBlock H1 i j * dephaseColumnFactor H1 (.inr j) := rfl
    rw [this, Step2.sideSignature_scale]
    · intro i; rw [Complex.mul_conj, dephaseRowFactor_unit hH1.1, Complex.ofReal_one]
    · intro j; rw [Complex.mul_conj, dephaseColumnFactor_unit hH1.1, Complex.ofReal_one]
  have hImK : (Step2.sideSignature (Step2.rightBlock K)).im ≠ 0 := by rw [sigK]; exact hIm
  have hm : Step2.sideSignature (Step2.lowerBlock K) = conj (Step2.sideSignature (Step2.rightBlock K)) := by
    by_contra hnm
    exact hT (isTaoOrbit_of_equivalent eK (nonmatched_tao K hK hKd hImK hnm))
  rcases lt_or_gt_of_ne hImK with hneg | hpos
  · -- conjugate: the horizontal signature becomes the positive root
    let K' : Had6 := Step2.conjugateHadamard ⟨K, hK⟩
    have hK'd : Step2.Dephased K'.1 := ⟨fun j => by simp [K', Step2.conjugateHadamard, conjM, hKd.1 j],
      fun i => by simp [K', Step2.conjugateHadamard, conjM, hKd.2 i]⟩
    have sR : Step2.sideSignature (Step2.rightBlock K'.1) = conj (Step2.sideSignature (Step2.rightBlock K)) :=
      sideSignature_map_conj _
    have sL : Step2.sideSignature (Step2.lowerBlock K'.1) = conj (Step2.sideSignature (Step2.lowerBlock K)) :=
      sideSignature_map_conj _
    obtain ⟨s, hs⟩ := matched_of_pos K' hK'd (by rw [sR, Complex.conj_im]; linarith)
      (by rw [sL, sR, hm])
    exact ⟨s, K', hs, Or.inr (by simpa [K', Step2.conjugateHadamard] using eK)⟩
  · obtain ⟨s, hs⟩ := matched_of_pos ⟨K, hK⟩ hKd hpos hm
    exact ⟨s, ⟨K, hK⟩, hs, Or.inl eK⟩


/-- **Density** (D) from strict-corner coverage. -/
theorem densityReach (hcov : StrictCornerCoverage) : Step2.MatchedDensityReach :=
  Step2.exactReach_implies_densityReach (exactReach hcov)

end NoFourMUBs.PRM
