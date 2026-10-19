import NoFourMUBs.Step2.AnchorTransport

/-!
# The Fourier family anchors the reconstruction (return Q)

`proof/coverage/returns/Q_fourier_anchor`.  Let `ω = e^{2πi/3}` and, for `z` on the unit circle, let
`A(z) = affineFourierMatrix ω 1 z`, upstream's affine-Fourier family, Hadamard for every `z`, with `A(1)` the
Fourier matrix `F6` (`fourierHadamard`).  Its corner on rows `0, 1, 3` and columns `0, 2, 5` (already dephased) is
the seed `θ(z) = (1, −z, ω, −ω²z)`.  With `x = Re z`, `y = Im z`:

  `X = 5 − 4x`, `Y = 2 + 2x`, `Z = J = 0`, `χ = −12(1 + x)²`, `R = 144 (1 + x)³ (1 − x) = (12 (1 + x) y)²`,

so `θ(z)` is strict when `y > 0`, and the complementary blocks `B`, `C` of the reordered matrix have
`2 T(B) = −6 (1 + z)(1 + z̄)² = χ + i√R` and `2 T(C) = χ − i√R`: the reordered `A(z)` is a matched completion at
`θ(z)` (`matched_fourier`).  This is return Q's curve `K(t)` up to equivalence (the same `R`).

Two uses replace the explicit anchor `H₀`:
* **Side existence** (`L1.sides_all`) needs one strict seed with matched sides: `exists_matched`.
* **Coverage** (`coverage_of_matched_density`, `PROOF.md` Lemma 4.2).  `A(exp(it)) → F6` as `t → 0`, and the
  covered classes `W` are open and contain `F6`, so for small `t > 0` the matched completion at `θ(exp(it))` lies in
  `W` (`exists_matched_mem`).  So `{s : f₊(s) ∈ W}` is a nonempty open and closed set of strict seeds, and the anchor
  transport (`eq_univ_of_anchor_transport`) makes it every strict seed.
-/

open Set Matrix Hadamard6 ComplexConjugate NoFourMUBs.Step1Geo NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.Step2

/-! ### The family and its matched corner -/

/-- `ω = e^{2πi/3}` (upstream's `standardOmega`) on the circle. -/
def omegaC : Circle :=
  ⟨standardOmega, mem_sphere_zero_iff_norm.2 <|
    (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 <| by
      rw [← Complex.normSq_eq_norm_sq]; exact standardOmega_isPrimitiveCubicPhase.1⟩

@[simp] lemma coe_omegaC : (omegaC : ℂ) = standardOmega := rfl

/-- The affine-Fourier family with `z₁ = 1`, `z₂ = z`. -/
def fourierCurve (z : ℂ) : Mat6 := affineFourierMatrix standardOmega 1 z

def fourierCurveHad (z : Circle) : Had6 :=
  ⟨fourierCurve z, affineFourierMatrix_isHadamard standardOmega_isPrimitiveCubicPhase
    (by simp) (Circle.normSq_coe z)⟩

/-- Rows `0, 1, 3, 2, 4, 5`. -/
def fourierRows : Equiv.Perm I6 := Equiv.swap (Sum.inl 2) (Sum.inr 0)

/-- Columns `0, 2, 5, 1, 3, 4`. -/
def fourierCols : Equiv.Perm I6 where
  toFun := Sum.elim ![Sum.inl 0, Sum.inl 2, Sum.inr 2] ![Sum.inl 1, Sum.inr 0, Sum.inr 1]
  invFun := Sum.elim ![Sum.inl 0, Sum.inr 0, Sum.inl 1] ![Sum.inr 1, Sum.inr 2, Sum.inl 2]
  left_inv := by decide
  right_inv := by decide

/-- The reordered family: its leading block is the corner `θ(z)`. -/
def fourierMatched (z : ℂ) : Mat6 := (fourierCurve z).submatrix fourierRows fourierCols

theorem equivalent_fourierMatched (z : ℂ) : Equivalent (fourierCurve z) (fourierMatched z) :=
  ⟨fourierRows, fourierCols, fun _ => 1, fun _ => 1, fun _ => by simp, fun _ => by simp,
    fun i j => by simp [fourierMatched]⟩

def fourierMatchedHad (z : Circle) : Had6 :=
  ⟨fourierMatched z, isHadamard_of_equivalent (equivalent_fourierMatched z) (fourierCurveHad z).2⟩

/-- The corner seed `θ(z) = (1, −z, ω, −ω²z)`. -/
def fourierSeed (z : Circle) : Seed := ![1, -z, omegaC, -(omegaC ^ 2 * z)]

section Corner

variable (z : ℂ)

lemma fourierMatched_blocks :
    leadingBlock (fourierMatched z) = !![1, 1, 1; 1, 1, -z; 1, standardOmega, -(standardOmega ^ 2 * z)] ∧
    rightBlock (fourierMatched z) = !![1, 1, 1; -1, -1, z; -1, -standardOmega, standardOmega ^ 2 * z] ∧
    lowerBlock (fourierMatched z) =
      !![1, standardOmega, standardOmega ^ 2; 1, standardOmega ^ 2, standardOmega;
        1, standardOmega ^ 2, -(standardOmega * z)] := by
  refine ⟨?_, ?_, ?_⟩ <;> ext i j <;> fin_cases i <;> fin_cases j <;>
    simp [leadingBlock, rightBlock, lowerBlock, fourierMatched, fourierCurve, affineFourierMatrix,
      fourierRows, fourierCols, Equiv.swap_apply_of_ne_of_ne]

lemma dephased_fourierMatched : Dephased (fourierMatched z) := by
  refine ⟨fun j => ?_, fun i => ?_⟩
  · rcases j with j | j <;> fin_cases j <;>
      simp [fourierMatched, fourierCurve, affineFourierMatrix, fourierRows, fourierCols,
        Equiv.swap_apply_of_ne_of_ne]
  · rcases i with i | i <;> fin_cases i <;>
      simp [fourierMatched, fourierCurve, affineFourierMatrix, fourierRows, fourierCols, Equiv.swap_apply_def]

/-- `2 T(B) = −6 (1 + z)(1 + z̄)²`. -/
lemma sig_right_fourier (hz : Complex.normSq z = 1) :
    2 * sideSignature (rightBlock (fourierMatched z)) = -6 * (1 + z) * (1 + conj z) ^ 2 := by
  have hω := standardOmega_isPrimitiveCubicPhase.2
  have hωc : conj standardOmega = standardOmega ^ 2 :=
    primitiveCubicPhase_star standardOmega_isPrimitiveCubicPhase
  have hzw : z * conj z = 1 := by rw [Complex.mul_conj, hz, Complex.ofReal_one]
  rw [(fourierMatched_blocks z).2.1, sideSignature, permanent3_expand, Matrix.det_fin_three]
  simp only [Fin.prod_univ_three, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, Matrix.empty_val', Matrix.cons_val_fin_one,
    Matrix.head_fin_const, Complex.star_def, map_neg, map_mul, map_one, map_pow, hωc]
  set o := standardOmega
  set w := conj z
  linear_combination (4*o^8*w^2*z^3 + 8*o^8*w^2*z^2 + 4*o^8*w^2*z - 10*o^7*w^2*z^3 - 22*o^7*w^2*z^2 -
    14*o^7*w^2*z - 2*o^7*w^2 + 8*o^6*w^2*z^3 + 20*o^6*w^2*z^2 + 16*o^6*w^2*z + 4*o^6*w^2 -
    6*o^4*w^2*z^3 - 18*o^4*w^2*z^2 - 18*o^4*w^2*z - 6*o^4*w^2 + 6*o^3*w^2*z^3 + 18*o^3*w^2*z^2 +
    18*o^3*w^2*z + 6*o^3*w^2 - 6*o*w^2*z^3 - 18*o*w^2*z^2 - 18*o*w^2*z - 6*o*w^2 + 6*w^2*z^3 +
    18*w^2*z^2 + 18*w^2*z + 6*w^2) * hω + (-6*w*z^2 - 18*w*z - 12*w - 6*z - 6) * hzw

/-- `2 T(C) = −6 (1 + z̄)(1 + z)²`. -/
lemma sig_lower_fourier (hz : Complex.normSq z = 1) :
    2 * sideSignature (lowerBlock (fourierMatched z)) = -6 * (1 + conj z) * (1 + z) ^ 2 := by
  have hω := standardOmega_isPrimitiveCubicPhase.2
  have hωc : conj standardOmega = standardOmega ^ 2 :=
    primitiveCubicPhase_star standardOmega_isPrimitiveCubicPhase
  have hzw : z * conj z = 1 := by rw [Complex.mul_conj, hz, Complex.ofReal_one]
  rw [(fourierMatched_blocks z).2.2, sideSignature, permanent3_expand, Matrix.det_fin_three]
  simp only [Fin.prod_univ_three, Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons, Matrix.empty_val', Matrix.cons_val_fin_one,
    Matrix.head_fin_const, Complex.star_def, map_neg, map_mul, map_one, map_pow, hωc]
  set o := standardOmega
  set w := conj z
  linear_combination (4*o^26*w*z^2 + 8*o^26*w*z + 4*o^26*w - 2*o^25*w*z^3 - 14*o^25*w*z^2 - 22*o^25*w*z -
    10*o^25*w + 4*o^24*w*z^3 + 16*o^24*w*z^2 + 20*o^24*w*z + 8*o^24*w - 6*o^22*w*z^3 - 18*o^22*w*z^2 -
    18*o^22*w*z - 6*o^22*w + 6*o^21*w*z^3 + 18*o^21*w*z^2 + 18*o^21*w*z + 6*o^21*w - 6*o^19*w*z^3 -
    18*o^19*w*z^2 - 18*o^19*w*z - 6*o^19*w + 6*o^18*w*z^3 + 18*o^18*w*z^2 + 18*o^18*w*z + 6*o^18*w -
    6*o^16*w*z^3 - 18*o^16*w*z^2 - 18*o^16*w*z - 6*o^16*w + 6*o^15*w*z^3 + 18*o^15*w*z^2 + 18*o^15*w*z +
    6*o^15*w - 6*o^13*w*z^3 - 18*o^13*w*z^2 - 18*o^13*w*z - 6*o^13*w + 6*o^12*w*z^3 + 18*o^12*w*z^2 +
    18*o^12*w*z + 6*o^12*w - 6*o^10*w*z^3 - 18*o^10*w*z^2 - 18*o^10*w*z - 6*o^10*w + 6*o^9*w*z^3 +
    18*o^9*w*z^2 + 18*o^9*w*z + 6*o^9*w - 6*o^7*w*z^3 - 18*o^7*w*z^2 - 18*o^7*w*z - 6*o^7*w +
    6*o^6*w*z^3 + 18*o^6*w*z^2 + 18*o^6*w*z + 6*o^6*w - 6*o^4*w*z^3 - 18*o^4*w*z^2 - 18*o^4*w*z -
    6*o^4*w + 6*o^3*w*z^3 + 18*o^3*w*z^2 + 18*o^3*w*z + 6*o^3*w - 6*o*w*z^3 - 18*o*w*z^2 - 18*o*w*z -
    6*o*w + 6*w*z^3 + 18*w*z^2 + 18*w*z + 6*w) * hω + (-6*z^2 - 12*z - 6) * hzw

end Corner

section Seed

variable (z : Circle)

lemma leadingBlock_fourierMatched : leadingBlock (fourierMatched z) = seedCorner (fourierSeed z) := by
  rw [(fourierMatched_blocks z).1]
  ext i j
  fin_cases i <;> fin_cases j <;> simp [seedCorner, corner, fourierSeed]

lemma normSq_re_im : (z : ℂ).re ^ 2 + (z : ℂ).im ^ 2 = 1 := by
  have h := Circle.normSq_coe z
  rw [Complex.normSq_apply] at h
  linear_combination h

lemma fourierSeed_X : seedX (fourierSeed z) = 5 - 4 * (z : ℂ).re := by
  have h := normSq_re_im z
  simp [seedX, seedS, fourierSeed, Complex.normSq_apply]
  linear_combination h

lemma fourierSeed_Y : seedY (fourierSeed z) = 2 + 2 * (z : ℂ).re := by
  have h := normSq_re_im z
  have hω := standardOmega_isPrimitiveCubicPhase
  have hT : seedT (fourierSeed z) = standardOmega ^ 2 * (1 + (z : ℂ)) := by
    simp [seedT, fourierSeed]
    linear_combination -hω.2
  rw [seedY, hT, map_mul, map_pow, hω.1, Complex.normSq_apply]
  simp
  linear_combination h

lemma fourierSeed_rho : seedRho (fourierSeed z) = 0 := by
  have hω := standardOmega_isPrimitiveCubicPhase.2
  have hzw : (z : ℂ) * conj (z : ℂ) = 1 := by
    rw [Complex.mul_conj, Circle.normSq_coe, Complex.ofReal_one]
  simp [seedRho, fourierSeed]
  linear_combination (-1 : ℂ) * hω - standardOmega ^ 2 * hzw

lemma fourierSeed_chi : seedChi (fourierSeed z) = -12 * (1 + (z : ℂ).re) ^ 2 := by
  have hZ : seedZ (fourierSeed z) = 0 := by simp [seedZ, fourierSeed_rho]
  have hJ : seedJ (fourierSeed z) = 0 := by simp [seedJ, fourierSeed_rho]
  unfold seedChi seedP
  rw [fourierSeed_X, fourierSeed_Y, hZ, hJ]
  ring

lemma fourierSeed_R : seedR (fourierSeed z) = (12 * (1 + (z : ℂ).re) * (z : ℂ).im) ^ 2 := by
  have h := normSq_re_im z
  have hZ : seedZ (fourierSeed z) = 0 := by simp [seedZ, fourierSeed_rho]
  have hJ : seedJ (fourierSeed z) = 0 := by simp [seedJ, fourierSeed_rho]
  unfold seedR seedG seedEta
  rw [fourierSeed_chi]
  unfold seedP
  rw [fourierSeed_X, fourierSeed_Y, hZ, hJ]
  linear_combination (-144 * (1 + (z : ℂ).re) ^ 2) * h

/-- **Return Q.** For `Im z > 0` the seed `θ(z)` is strict and the reordered family is a matched completion
there. -/
theorem matched_fourier (hz : 0 < (z : ℂ).im) :
    ∃ hR : 0 < seedR (fourierSeed z), Matched ⟨fourierSeed z, hR⟩ (fourierMatchedHad z) := by
  set x := (z : ℂ).re
  set y := (z : ℂ).im
  have h := normSq_re_im z
  have hx : 0 < 1 + x := by nlinarith
  have hpos : 0 < 12 * (1 + x) * y := by positivity
  have hsqrt : Real.sqrt (seedR (fourierSeed z)) = 12 * (1 + x) * y := by
    rw [fourierSeed_R, Real.sqrt_sq hpos.le]
  have hxyC : (x : ℂ) ^ 2 + (y : ℂ) ^ 2 = 1 := by exact_mod_cast h
  have hzc : (z : ℂ) = x + y * Complex.I := (Complex.re_add_im _).symm
  have hwc : conj (z : ℂ) = x - y * Complex.I := by
    apply Complex.ext <;> simp [x, y]
  have hI := Complex.I_sq
  have hchi : seedChi (fourierSeed z) = -12 * (1 + x) ^ 2 := fourierSeed_chi z
  refine ⟨by rw [fourierSeed_R]; exact pow_pos hpos 2, dephased_fourierMatched _, leadingBlock_fourierMatched z,
    ?_, ?_⟩
  · change 2 * sideSignature (rightBlock (fourierMatched z)) = _
    rw [sig_right_fourier _ (Circle.normSq_coe z), hsqrt, hchi, hwc, hzc]
    push_cast
    linear_combination (-6 * (1 + (x : ℂ) - y * Complex.I)) * hxyC +
      (6 * (1 + (x : ℂ) - y * Complex.I) * (y : ℂ) ^ 2) * hI
  · change 2 * sideSignature (lowerBlock (fourierMatched z)) = _
    rw [sig_lower_fourier _ (Circle.normSq_coe z), hsqrt, hchi, hwc, hzc]
    push_cast
    linear_combination (-6 * (1 + (x : ℂ) + y * Complex.I)) * hxyC +
      (6 * (1 + (x : ℂ) + y * Complex.I) * (y : ℂ) ^ 2) * hI

theorem class_fourierMatched : hadamardQuotient (fourierMatchedHad z) = hadamardQuotient (fourierCurveHad z) :=
  Quotient.sound (equivalent_symm (equivalent_fourierMatched z))

end Seed

/-! ### The Fourier limit -/

theorem continuous_fourierCurve : Continuous fourierCurve := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  rcases i with i | i <;> rcases j with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierCurve, affineFourierMatrix] <;> fun_prop

/-- The classes `[A(e^{it})]`, a path through the Fourier class at `t = 0`. -/
def fourierPath (t : ℝ) : HadamardClass6 := hadamardQuotient (fourierCurveHad (Circle.exp t))

theorem continuous_fourierPath : Continuous fourierPath :=
  continuous_hadamardQuotient.comp (Continuous.subtype_mk
    (continuous_fourierCurve.comp (continuous_subtype_val.comp Circle.exp.continuous)) _)

theorem fourierPath_zero : fourierPath 0 = fourierClass := by
  simp only [fourierPath, Circle.exp_zero]
  rfl

/-- **Some matched completion lies in any open set of classes containing `F6`**: take `θ(e^{it})` for small
`t > 0`. -/
theorem exists_matched_mem (W : Set HadamardClass6) (hW : IsOpen W) (hF : fourierClass ∈ W) :
    ∃ (s : StrictSeed) (H : Had6), Matched s H ∧ hadamardQuotient H ∈ W := by
  have hO : IsOpen (fourierPath ⁻¹' W) := hW.preimage continuous_fourierPath
  obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 hO 0 (by rw [Set.mem_preimage, fourierPath_zero]; exact hF)
  set t := min (ε / 2) 1
  have ht0 : 0 < t := lt_min (by positivity) one_pos
  have htε : t < ε := lt_of_le_of_lt (min_le_left _ _) (by linarith)
  have htπ : t < Real.pi := lt_of_le_of_lt (min_le_right _ _) (by linarith [Real.pi_gt_three])
  have him : 0 < ((Circle.exp t : Circle) : ℂ).im := by
    rw [Circle.coe_exp, Complex.exp_ofReal_mul_I_im]; exact Real.sin_pos_of_pos_of_lt_pi ht0 htπ
  obtain ⟨hR, hM⟩ := matched_fourier _ him
  refine ⟨⟨_, hR⟩, _, hM, ?_⟩
  rw [class_fourierMatched]
  exact hball (by rw [Metric.mem_ball, Real.dist_eq, sub_zero, abs_of_pos ht0]; exact htε)

/-- Some strict seed has a matched completion. -/
theorem exists_matched : ∃ (s : StrictSeed) (H : Had6), Matched s H := by
  obtain ⟨s, H, hH, -⟩ := exists_matched_mem Set.univ isOpen_univ trivial
  exact ⟨s, H, hH⟩

/-! ### Coverage -/

/-- **Coverage** (`PROOF.md` Lemma 4.2).  L1 + L2 + G-density, clopen Records and `F6` in a Record imply exactly
`NoFourMUBs.Inputs.covered`.  The seeds whose matched class is covered form an open and closed set (L1, L2 and
continuity), nonempty by the Fourier family (`exists_matched_mem`), and stable under the anchor transport (L2), so
it is every strict seed; the closure of the matched images is then covered. -/
theorem coverage_of_matched_density
    (Ball : Mat6 → Prop) (hE : MatchedExistence) (hU : MatchedUniqueness)
    (hD : MatchedDensityReach) (hClopen : RecordClopen Ball)
    (hFourier : FourierAnchorCertificate Ball) :
    ∀ H, IsHadamard H → ¬ IsTaoOrbit H →
      ∃ G K, InGamma H G ∧ Ball K ∧ Equivalent G K := by
  set A : Set StrictSeed := matchedClassMap hE ⁻¹' CoveredClasses Ball
  have hA : A = Set.univ := by
    apply eq_univ_of_anchor_transport A (hClopen.preimage (continuous_matchedClassMap hE hU))
    · obtain ⟨s, H, hH, hW⟩ := exists_matched_mem _ hClopen.isOpen hFourier
      exact ⟨s, by rw [Set.mem_preimage, ← matchedClassMap_eq hE hU s H hH]; exact hW⟩
    · intro s _ hs
      refine ⟨_, Classical.choose_spec (hE s), fun s' K hK e => ?_⟩
      have hq : hadamardQuotient (Classical.choose (hE s)) = hadamardQuotient K := Quotient.sound e
      rw [Set.mem_preimage, ← matchedClassMap_eq hE hU s' K hK, ← hq,
        matchedClassMap_eq hE hU s _ (Classical.choose_spec (hE s))]
      exact hs
  have hMatched : MatchedClasses ⊆ CoveredClasses Ball := by
    rintro q ⟨s, H, hH, rfl⟩
    rw [matchedClassMap_eq hE hU s H hH]
    exact (show s ∈ A by rw [hA]; trivial)
  have hConjugate : ConjugateMatchedClasses ⊆ CoveredClasses Ball := by
    rintro q ⟨s, H, hH, rfl⟩
    exact coveredMatrix_conjugate (hMatched ⟨s, H, hH, rfl⟩)
  have hUnion : ({fourierClass} ∪ MatchedClasses) ∪ ConjugateMatchedClasses ⊆
      CoveredClasses Ball := by
    intro q hq
    rcases hq with (hq | hq) | hq
    · rcases hq with rfl
      exact hFourier
    · exact hMatched hq
    · exact hConjugate hq
  have hClosure := closure_minimal hUnion hClopen.isClosed
  intro H hH hTao
  exact hClosure (hD (hadamardQuotient ⟨H, hH⟩) hTao)

end NoFourMUBs.Step2
