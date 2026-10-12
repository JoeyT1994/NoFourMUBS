import NoFourMUBs.Step2.Statements

/-!
Actual positional frames, in the repository's matrix and equivalence model.
All row and column permutations are retained. Repeated descriptions of the
same 3 by 3 corner do not change a universal statement or a positive average.
-/

open Matrix Hadamard6

noncomputable section
namespace NoFourMUBs.Step2

abbrev Frame := Equiv.Perm I6 × Equiv.Perm I6

def permuted (H : Had6) (f : Frame) : Had6 :=
  ⟨H.1.submatrix f.1 f.2, isHadamard_of_equivalent
    ⟨f.1, f.2, fun _ => 1, fun _ => 1,
      fun _ => by simp, fun _ => by simp, fun _ _ => by simp⟩ H.2⟩

def framed (H : Had6) (f : Frame) : Had6 :=
  ⟨dephase (permuted H f).1, dephase_isHadamard (permuted H f).2⟩

theorem equivalent_framed (H : Had6) (f : Frame) :
    Equivalent H.1 (framed H f).1 := by
  apply equivalent_trans (K := (permuted H f).1)
  · exact ⟨f.1, f.2, fun _ => 1, fun _ => 1,
      fun _ => by simp, fun _ => by simp, fun _ _ => by simp [permuted]⟩
  · exact equivalent_dephase (permuted H f).2.1

theorem framed_dephased (H : Had6) (f : Frame) : Dephased (framed H f).1 :=
  dephase_isDephased (permuted H f).2.1

def entryPhase (H : Had6) (i j : I6) : Circle :=
  ⟨H.1 i j, by
    apply mem_sphere_zero_iff_norm.mpr
    have h := H.2.1 i j
    rw [Complex.normSq_eq_norm_sq] at h
    nlinarith [norm_nonneg (H.1 i j)]⟩

def leadingSeed (H : Had6) : Seed :=
  ![entryPhase H (.inl 1) (.inl 1), entryPhase H (.inl 1) (.inl 2),
    entryPhase H (.inl 2) (.inl 1), entryPhase H (.inl 2) (.inl 2)]

theorem leadingBlock_eq_seed {H : Had6} (hH : Dephased H.1) :
    leadingBlock H.1 = seedCorner (leadingSeed H) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [leadingBlock, seedCorner, corner, leadingSeed, entryPhase, hH.1, hH.2]

def frameSeed (H : Had6) (f : Frame) : Seed := leadingSeed (framed H f)

def frameRight (H : Had6) (f : Frame) : ℂ :=
  sideSignature (rightBlock (framed H f).1)

def frameLower (H : Had6) (f : Frame) : ℂ :=
  sideSignature (lowerBlock (framed H f).1)

def AllCritical (H : Had6) : Prop := ∀ f : Frame, seedR (frameSeed H f) = 0

def SameLabels (H : Had6) : Prop := ∀ f : Frame, frameRight H f = frameLower H f

/-- Membership in either matched image, using the existing positive relation. -/
def InMatchedOrbit (H : Had6) : Prop :=
  ∃ (s : StrictSeed) (K : Had6), Matched s K ∧
    (Equivalent H.1 K.1 ∨ Equivalent H.1 (conjM K.1))

def inverseSeed (p : Seed) : Seed := fun i => (p i)⁻¹

theorem phase_conj (z : Circle) : (starRingEnd ℂ) (z : ℂ) = (z : ℂ)⁻¹ :=
  (Circle.coe_inv_eq_conj z).symm.trans (Circle.coe_inv z)

theorem inverseSeed_invariants (p : Seed) :
    seedR (inverseSeed p) = seedR p ∧ seedChi (inverseSeed p) = seedChi p := by
  have hS : seedS (inverseSeed p) = star (seedS p) := by
    simp [seedS, inverseSeed, Complex.star_def, phase_conj]
  have hT : seedT (inverseSeed p) = star (seedT p) := by
    simp [seedT, inverseSeed, Complex.star_def, phase_conj]
  have hρ : seedRho (inverseSeed p) = star (seedRho p) := by
    simp [seedRho, inverseSeed, Complex.star_def, phase_conj]
  have hX : seedX (inverseSeed p) = seedX p := by
    simp [seedX, hS, Complex.star_def]
  have hY : seedY (inverseSeed p) = seedY p := by
    simp [seedY, hT, Complex.star_def]
  have hZ : seedZ (inverseSeed p) = seedZ p := by
    simp [seedZ, hρ, Complex.star_def]
  have hJ : seedJ (inverseSeed p) = seedJ p := by
    simp only [seedJ, hS, hT, hρ, star_star]
    have he : star (seedS p) * star (seedRho p) * seedT p =
        star (seedS p * seedRho p * star (seedT p)) := by simp
    rw [he]
    rfl
  simp [seedR, seedG, seedEta, seedChi, seedP, hX, hY, hZ, hJ]

theorem sideSignature_conjugate (B : Mat3) :
    sideSignature (B.map (starRingEnd ℂ)) = star (sideSignature B) := by
  have hp : permanent3 (B.map (starRingEnd ℂ)) = star (permanent3 B) := by
    simp [permanent3, map_sum, map_prod]
  have hd : (B.map (starRingEnd ℂ)).det = star B.det :=
    ((starRingEnd ℂ).map_det B).symm
  simp [sideSignature, hp, hd, map_prod]

/-- A frame with the negative orientation belongs to the conjugate matched
image. The seed changes by conjugation; its discriminant and χ do not. -/
theorem matched_orbit_of_negative {H : Had6} {p : Seed}
    (hD : Dephased H.1) (hE : leadingBlock H.1 = seedCorner p)
    (hR : 0 < seedR p)
    (hB : 2 * sideSignature (rightBlock H.1) =
      (seedChi p : ℂ) - (Real.sqrt (seedR p) : ℂ) * Complex.I)
    (hC : 2 * sideSignature (lowerBlock H.1) =
      (seedChi p : ℂ) + (Real.sqrt (seedR p) : ℂ) * Complex.I) :
    InMatchedOrbit H := by
  obtain ⟨hiR, hiχ⟩ := inverseSeed_invariants p
  let s : StrictSeed := ⟨inverseSeed p, hiR.symm ▸ hR⟩
  refine ⟨s, conjugateHadamard H, ⟨?_, ?_, ?_, ?_⟩, Or.inr ?_⟩
  · constructor
    · intro j
      simp [conjugateHadamard, conjM, hD.1]
    · intro i
      simp [conjugateHadamard, conjM, hD.2]
  · have he : leadingBlock (conjugateHadamard H).1 =
        (leadingBlock H.1).map (starRingEnd ℂ) := rfl
    rw [he, hE]
    ext i j
    fin_cases i <;> fin_cases j <;>
      simp [s, seedCorner, corner, inverseSeed, Complex.star_def, phase_conj]
  · have hb := congrArg (starRingEnd ℂ) hB
    change 2 * sideSignature ((rightBlock H.1).map (starRingEnd ℂ)) = _
    rw [sideSignature_conjugate]
    simpa [s, hiR, hiχ, map_ofNat, sub_eq_add_neg] using hb
  · have hc := congrArg (starRingEnd ℂ) hC
    change 2 * sideSignature ((lowerBlock H.1).map (starRingEnd ℂ)) = _
    rw [sideSignature_conjugate]
    simpa [s, hiR, hiχ, map_ofNat, sub_eq_add_neg] using hc
  · change Equivalent H.1 (conjM (conjM H.1))
    rw [conjugate_conjugate]
    exact equivalent_refl H.1

end NoFourMUBs.Step2
