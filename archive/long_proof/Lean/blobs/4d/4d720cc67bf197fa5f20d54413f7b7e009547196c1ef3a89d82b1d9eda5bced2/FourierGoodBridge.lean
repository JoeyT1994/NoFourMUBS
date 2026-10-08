import FourierActualBridge

/-! Uniform scalar guards for the necessary Fourier reconstruction cover. -/
namespace Hadamard6Extensions.FourPhaseFourierBridge
open Hadamard6Extensions.FourierSide Hadamard6Extensions.FourierConditioning
noncomputable section

theorem affine_good_side_explicit_reconstruction (s t A B C D w : ℂ)
    (hw : w^2+w+1=0)
    (hx : IsPhase3 (fourierRow s A B w))
    (hy : IsPhase3 (fourierRow t C D w))
    (hA : Complex.normSq A ≤ 1) (hB : Complex.normSq B ≤ 1)
    (hC : Complex.normSq C ≤ 1) (hD : Complex.normSq D ≤ 1)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (affineSide s t A B C D w).det) :
    ∃ delta h T : ℂ,
      SideOrientationData s t (prod3 (fourierRow s A B w))
        (prod3 (fourierRow t C D w))
        (cross3 (fourierRow s A B w) (fourierRow t C D w))
        (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta h T ∧
      (81/10 : ℝ) ≤ Complex.normSq h ∧
      (1/1000 : ℝ) ≤ Complex.normSq T ∧
      ∀ tau : ℂ, tau^3=T →
        SideReconstructionData s t (prod3 (fourierRow s A B w))
          (prod3 (fourierRow t C D w))
          (cross3 (fourierRow s A B w) (fourierRow t C D w))
          (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta tau ∧
        (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
        Complex.normSq tau⁻¹ ≤ 10 ∧
        ∃ p : Equiv.Perm (Fin 3),
          reconstructedSide s t (prod3 (fourierRow s A B w))
            (prod3 (fourierRow t C D w))
            (cross3 (fourierRow s A B w) (fourierRow t C D w))
            (permanentSide (fourierRow s A B w) (fourierRow t C D w)) delta tau w =
          fun i j => affineSide s t A B C D w i (p j) := by
  let g := Complex.normSq (affineSide s t A B C D w).det
  have hdisc := discriminant_normSq s t A B C D w hw
  have hinv : (affineSide s t A B C D w).det ≠ 0 := by
    intro hz
    norm_num [hz] at hg
  have hdn := invertible_side_has_nonzero_discriminant s t A B C D w hw hinv
  have hdet : A*D-B*C≠0 := by
    intro hz
    apply hdn
    rw [hz,mul_zero]
  rcases le_total (Complex.normSq (B*C)) (Complex.normSq (A*D)) with hlarge | hlarge
  · obtain ⟨hh,hT,hroot⟩ := large_pivot_good_data A B C D g hdisc hlarge hA hD hg
    have hhn : 9*A*D ≠ 0 := by intro he; norm_num [he] at hh
    have hTn : A^3 ≠ 0 := by intro he; norm_num [he] at hT
    have hAn : A ≠ 0 := by intro he; simp [he] at hTn
    have hDn : D ≠ 0 := by intro he; simp [he] at hhn
    have hrec := affine_phase_first_orientation s t A B C D w hw hdet hAn hDn hx hy
    refine ⟨9*(A*D-B*C), 9*A*D, A^3, ?_, hh, hT, ?_⟩
    · exact orientationData_of_root _ _ _ _ _ _ _ _ _ A
        (affine_phase_pivot s t A B C D w hw).symm rfl (hrec A rfl).1
    · intro tau htau
      obtain ⟨hlo,hhi,hi⟩ := hroot tau htau
      obtain ⟨hd,hp⟩ := hrec tau htau
      exact ⟨hd,hlo,hhi,hi,hp⟩
  · have hdisc' : Complex.normSq (9*(B*C-A*D))=3*g := by
      have he : (9 : ℂ)*(B*C-A*D)=-(9*(A*D-B*C)) := by ring
      simpa only [he, Complex.normSq_neg] using hdisc
    obtain ⟨hh,hT,hroot⟩ := large_pivot_good_data B A D C g hdisc' hlarge hB hC hg
    have hhn : 9*B*C ≠ 0 := by intro he; norm_num [he] at hh
    have hTn : B^3 ≠ 0 := by intro he; norm_num [he] at hT
    have hBn : B ≠ 0 := by intro he; simp [he] at hTn
    have hCn : C ≠ 0 := by intro he; simp [he] at hhn
    have hrec := affine_phase_second_orientation s t A B C D w hw hdet hBn hCn hx hy
    refine ⟨9*(B*C-A*D), 9*B*C, B^3, ?_, hh, hT, ?_⟩
    · exact orientationData_of_root _ _ _ _ _ _ _ _ _ B
        (affine_phase_opposite_pivot s t A B C D w hw).symm rfl (hrec B rfl).1
    · intro tau htau
      obtain ⟨hlo,hhi,hi⟩ := hroot tau htau
      obtain ⟨hd,hp⟩ := hrec tau htau
      exact ⟨hd,hlo,hhi,hi,hp⟩

theorem actual_good_side_explicit_reconstruction (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det) :
    ∃ delta h T : ℂ,
      SideOrientationData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta h T ∧
      (81/10 : ℝ) ≤ Complex.normSq h ∧
      (1/1000 : ℝ) ≤ Complex.normSq T ∧
      ∀ tau : ℂ, tau^3=T →
        SideReconstructionData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
          (cross3 x y) (permanentSide x y) delta tau ∧
        (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
        Complex.normSq tau⁻¹ ≤ 10 ∧
        ∃ p : Equiv.Perm (Fin 3),
          reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
            (cross3 x y) (permanentSide x y) delta tau w =
          fun i j => actualSide x y i (p j) := by
  have hside := actual_side_fourier x y w hw
  have hxr := actual_row_fourier x w hw
  have hyr := actual_row_fourier y w hw
  have h := affine_good_side_explicit_reconstruction (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw
    (by rwa [hxr]) (by rwa [hyr])
    (firstMode_normSq_le_one x w hw hx) (secondMode_normSq_le_one x w hw hx)
    (firstMode_normSq_le_one y w hw hy) (secondMode_normSq_le_one y w hw hy)
    (by rwa [hside])
  simpa only [hxr,hyr,hside] using h

/-- The same necessary cover expressed entirely through the six scalar moments
and one orientation, ready for binding to recovered Gram-side invariants. -/
theorem actual_good_side_scalar_cover (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0) (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det) :
    ∃ delta : ℂ,
      (∃ tau : ℂ, SideReconstructionData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta tau) ∧
      (81/10 : ℝ) ≤ Complex.normSq (sidePivot (sum3 x) (sum3 y)
        (permanentSide x y) delta) ∧
      (1/1000 : ℝ) ≤ Complex.normSq (sideRadicand (sum3 x) (sum3 y)
        (prod3 x) (prod3 y) (cross3 x y) (permanentSide x y) delta) ∧
      ∀ tau : ℂ, tau^3=sideRadicand (sum3 x) (sum3 y) (prod3 x) (prod3 y)
        (cross3 x y) (permanentSide x y) delta →
        SideReconstructionData (sum3 x) (sum3 y) (prod3 x) (prod3 y)
          (cross3 x y) (permanentSide x y) delta tau ∧
        (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
        Complex.normSq tau⁻¹ ≤ 10 ∧
        ∃ p : Equiv.Perm (Fin 3),
          reconstructedSide (sum3 x) (sum3 y) (prod3 x) (prod3 y)
            (cross3 x y) (permanentSide x y) delta tau w =
          fun i j => actualSide x y i (p j) := by
  obtain ⟨delta,h,T,hd,hh,hT,hrec⟩ :=
    actual_good_side_explicit_reconstruction x y w hw hx hy hg
  obtain ⟨tau,htau⟩ := hd.root_exists
  refine ⟨delta, ⟨tau, hd.to_reconstruction tau htau⟩, ?_, ?_, ?_⟩
  · rwa [← hd.h_eq]
  · rwa [← hd.T_eq]
  · intro tau htau
    exact hrec tau (htau.trans hd.T_eq.symm)

#print axioms affine_good_side_explicit_reconstruction
#print axioms actual_good_side_explicit_reconstruction
#print axioms actual_good_side_scalar_cover

end
end Hadamard6Extensions.FourPhaseFourierBridge
