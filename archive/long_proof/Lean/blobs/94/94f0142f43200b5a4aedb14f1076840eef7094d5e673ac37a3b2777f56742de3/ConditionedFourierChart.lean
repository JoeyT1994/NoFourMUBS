import FourierConditioning

/-! Quantitative radical charts, covering every actual well-conditioned phase side. -/
namespace Hadamard6Extensions.FourierConditioning
open Hadamard6Extensions.FourierSide
noncomputable section

theorem large_pivot_good_data (A B C D : ℂ) (g : ℝ)
    (hdisc : Complex.normSq (9*(A*D-B*C))=3*g)
    (hlarge : Complex.normSq (B*C) ≤ Complex.normSq (A*D))
    (hA : Complex.normSq A ≤ 1) (hD : Complex.normSq D ≤ 1)
    (hg : (54/5 : ℝ) ≤ g) :
    (81/10 : ℝ) ≤ Complex.normSq (9*A*D) ∧
    (1/1000 : ℝ) ≤ Complex.normSq (A^3) ∧
    ∀ tau : ℂ, tau^3=A^3 →
      (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
      Complex.normSq tau⁻¹ ≤ 10 := by
  obtain ⟨hloA,hloD,hh⟩ := larger_product_bounds A B C D g hdisc hlarge hA hD
  have hlo : (1/10 : ℝ) ≤ Complex.normSq A := by linarith
  refine ⟨by linarith, ?_, ?_⟩
  · rw [map_pow]
    have hpow := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 1/10) hlo 3
    norm_num at hpow
    exact hpow
  · intro tau htau
    have hn := cube_equal_normSq htau
    refine ⟨by rwa [hn], by rwa [hn], ?_⟩
    exact inverse_normSq_le_ten (by rwa [hn])

theorem affine_good_conditioned_chart (s t A B C D w : ℂ)
    (hw : w^2+w+1=0)
    (hA : Complex.normSq A ≤ 1) (hB : Complex.normSq B ≤ 1)
    (hC : Complex.normSq C ≤ 1) (hD : Complex.normSq D ≤ 1)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (affineSide s t A B C D w).det) :
    ∃ h T : ℂ,
      (81/10 : ℝ) ≤ Complex.normSq h ∧
      (1/1000 : ℝ) ≤ Complex.normSq T ∧
      h ≠ 0 ∧ T ≠ 0 ∧
      ∀ tau : ℂ, tau^3=T →
        (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
        Complex.normSq tau⁻¹ ≤ 10 ∧
        ∃ p : Equiv.Perm (Fin 3),
          radicalSide s t (9*A*B) (9*C*D) h tau w =
            fun i j => affineSide s t A B C D w i (p j) := by
  let g := Complex.normSq (affineSide s t A B C D w).det
  have hdisc := discriminant_normSq s t A B C D w hw
  rcases le_total (Complex.normSq (B*C)) (Complex.normSq (A*D)) with hlarge | hlarge
  · obtain ⟨hh,hT,hroot⟩ := large_pivot_good_data A B C D g hdisc hlarge hA hD hg
    have hhn : 9*A*D ≠ 0 := by intro he; norm_num [he] at hh
    have hTn : A^3 ≠ 0 := by intro he; norm_num [he] at hT
    have hAn : A ≠ 0 := by intro he; simp [he] at hTn
    have hDn : D ≠ 0 := by intro he; simp [he] at hhn
    refine ⟨9*A*D,A^3,hh,hT,hhn,hTn,?_⟩
    intro tau htau
    obtain ⟨hlo,hhi,hinv⟩ := hroot tau htau
    exact ⟨hlo,hhi,hinv,cube_choice_only_permutes s t A B C D w tau hw hAn hDn htau⟩
  · have hdisc' : Complex.normSq (9*(B*C-A*D))=3*g := by
      have he : (9 : ℂ)*(B*C-A*D)=-(9*(A*D-B*C)) := by ring
      simpa only [he, Complex.normSq_neg] using hdisc
    obtain ⟨hh,hT,hroot⟩ := large_pivot_good_data B A D C g hdisc' hlarge hB hC hg
    have hhn : 9*B*C ≠ 0 := by intro he; norm_num [he] at hh
    have hTn : B^3 ≠ 0 := by intro he; norm_num [he] at hT
    have hBn : B ≠ 0 := by intro he; simp [he] at hTn
    have hCn : C ≠ 0 := by intro he; simp [he] at hhn
    refine ⟨9*B*C,B^3,hh,hT,hhn,hTn,?_⟩
    intro tau htau
    obtain ⟨hlo,hhi,hinv⟩ := hroot tau htau
    refine ⟨hlo,hhi,hinv,?_⟩
    obtain ⟨p,hp⟩ := cube_choice_only_permutes s t B A D C w tau hw hBn hCn htau
    have hab : 9*B*A=9*A*B := by ring
    have hcd : 9*D*C=9*C*D := by ring
    rw [hab,hcd] at hp
    refine ⟨p.trans (Equiv.swap 1 2),?_⟩
    rw [hp,affine_reverse]
    rfl

theorem physical_good_side_conditioned_chart (x y : Fin 3 → ℂ) (w : ℂ)
    (hw : w^2+w+1=0)
    (hx : ∀ j, Complex.normSq (x j)=1)
    (hy : ∀ j, Complex.normSq (y j)=1)
    (hg : (54/5 : ℝ) ≤ Complex.normSq (actualSide x y).det) :
    ∃ h T : ℂ,
      (81/10 : ℝ) ≤ Complex.normSq h ∧
      (1/1000 : ℝ) ≤ Complex.normSq T ∧
      h ≠ 0 ∧ T ≠ 0 ∧
      ∀ tau : ℂ, tau^3=T →
        (1/10 : ℝ) ≤ Complex.normSq tau ∧ Complex.normSq tau ≤ 1 ∧
        Complex.normSq tau⁻¹ ≤ 10 ∧
        ∃ p : Equiv.Perm (Fin 3),
          radicalSide (sum3 x) (sum3 y)
            (9*firstMode x w*secondMode x w)
            (9*firstMode y w*secondMode y w) h tau w =
            fun i j => actualSide x y i (p j) := by
  have hs := actual_side_fourier x y w hw
  have hh := affine_good_conditioned_chart (sum3 x) (sum3 y)
    (firstMode x w) (secondMode x w) (firstMode y w) (secondMode y w) w hw
    (firstMode_normSq_le_one x w hw hx) (secondMode_normSq_le_one x w hw hx)
    (firstMode_normSq_le_one y w hw hy) (secondMode_normSq_le_one y w hw hy)
    (by rwa [hs])
  simpa only [hs] using hh

#print axioms large_pivot_good_data
#print axioms affine_good_conditioned_chart
#print axioms physical_good_side_conditioned_chart
end
end Hadamard6Extensions.FourierConditioning
