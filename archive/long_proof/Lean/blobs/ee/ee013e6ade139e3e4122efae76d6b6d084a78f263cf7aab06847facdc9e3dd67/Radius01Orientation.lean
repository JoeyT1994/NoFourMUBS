import Radius01PhysicalBridge

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

theorem conjugate_product_difference_norm (a b A B : ℂ)
    (hb : Complex.normSq b=1) (hA : Complex.normSq A=1) :
    ‖a*conj b-A*conj B‖ ≤ ‖a-A‖+‖b-B‖ := by
  have h := product_difference_norm a (conj b) A (conj B) (by simpa using hb) hA
  simpa only [← map_sub,Complex.norm_conj] using h

theorem pair_inner_difference_norm (a b c d A B C D : ℂ)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1)
    (hA : Complex.normSq A=1) (hB : Complex.normSq B=1) :
    ‖(1+a*conj c+b*conj d)-(1+A*conj C+B*conj D)‖ ≤
      ‖a-A‖+‖b-B‖+‖c-C‖+‖d-D‖ := by
  have he : (1+a*conj c+b*conj d)-(1+A*conj C+B*conj D)=
    (a*conj c-A*conj C)+(b*conj d-B*conj D) := by ring
  rw [he]
  have ht := norm_add_le (a*conj c-A*conj C) (b*conj d-B*conj D)
  linarith [conjugate_product_difference_norm a c A C hc hA,
    conjugate_product_difference_norm b d B D hd hB]

theorem reference_pair_inner_cancel :
    1+pairMinus (-1)*conj (pairPlus (-1))+pairPlus (-1)*conj (pairMinus (-1))=0 := by
  apply Complex.ext <;> simp [pairMinus,pairPlus]
  · nlinarith [reference_height_square]
  · ring

theorem seed_pair_inner_cancel (b : Bool) :
    1+phase (seedAngle b 0)*conj (phase (seedAngle b 2))+
      phase (seedAngle b 1)*conj (phase (seedAngle b 3))=0 := by
  have h := reference_pair_inner_cancel
  cases b
  · simpa [seedAngle,reference_pair_fourier.1,reference_pair_fourier.2] using h
  · simpa [seedAngle,reference_pair_fourier.1,reference_pair_fourier.2,add_comm,add_left_comm,add_assoc] using h

theorem phase_unit (t : ℝ) : Complex.normSq (phase t)=1 := by
  rw [Complex.normSq_eq_norm_sq]
  simp only [phase,Complex.norm_exp_I_mul_ofReal,one_pow]

/-- Orthogonality in the physical six-by-six matrix bounds the exact side
inner product by the four seed displacements. -/
theorem physical_rightGram_seed_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r) :
    ‖rightGram H 1 2‖ ≤ 4*r := by
  obtain ⟨u,he,hu,_⟩ := hball
  have he0 : H 1 1=phase (seedAngle b 0+u 0) := by simpa [seedEntry,phase] using he 0
  have he1 : H 1 2=phase (seedAngle b 1+u 1) := by simpa [seedEntry,phase] using he 1
  have he2 : H 2 1=phase (seedAngle b 2+u 2) := by simpa [seedEntry,phase] using he 2
  have he3 : H 2 2=phase (seedAngle b 3+u 3) := by simpa [seedEntry,phase] using he 3
  have hh := pair_inner_difference_norm (H 1 1) (H 1 2) (H 2 1) (H 2 2)
    (phase (seedAngle b 0)) (phase (seedAngle b 1))
    (phase (seedAngle b 2)) (phase (seedAngle b 3)) (hH.1 _ _) (hH.1 _ _)
    (phase_unit _) (phase_unit _)
  rw [seed_pair_inner_cancel,sub_zero] at hh
  rw [physical_rightGram_negative hH 1 2 (by decide),norm_neg]
  have hg : gramEntry H leadingCols (upperIndex 1) (upperIndex 2)=
      1+H 1 1*conj (H 2 1)+H 1 2*conj (H 2 2) := by
    simp [gramEntry,leadingCols,upperIndex,hd.2]
  rw [hg]
  rw [he0,he1,he2,he3] at hh
  linarith [phase_shift_norm (seedAngle b 0) (u 0),
    phase_shift_norm (seedAngle b 1) (u 1),phase_shift_norm (seedAngle b 2) (u 2),
    phase_shift_norm (seedAngle b 3) (u 3),hu 0,hu 1,hu 2,hu 3]

def sideRowNormalized (H : Mat6) (i : Fin 3) (j : Fin 3) : ℂ :=
  blockB H i j*conj (blockB H i 0)

theorem physical_sideRowNormalized_unit {H : Mat6} (hH : Physical H) (i j : Fin 3) :
    Complex.normSq (sideRowNormalized H i j)=1 := by
  simp [sideRowNormalized,blockB,Complex.normSq_mul,hH.1]

theorem physical_normalized_side_inner_norm {H : Mat6} (hH : Physical H) :
    ‖1+sideRowNormalized H 1 1*conj (sideRowNormalized H 2 1)+
      sideRowNormalized H 1 2*conj (sideRowNormalized H 2 2)‖=‖rightGram H 1 2‖ := by
  have hunit (z : ℂ) (hz : Complex.normSq z=1) : z*conj z=1 := by
    rw [Complex.mul_conj,hz]; norm_num
  have hmul :
      1+sideRowNormalized H 1 1*conj (sideRowNormalized H 2 1)+
        sideRowNormalized H 1 2*conj (sideRowNormalized H 2 2)=
      (conj (H 1 3)*H 2 3)*rightGram H 1 2 := by
    simp only [sideRowNormalized,blockB,rightGram,Fin.sum_univ_succ,upperIndex,bottomIndex]
    simp only [map_mul,starRingEnd_self_apply]
    have hu1 := hunit (H 1 3) (hH.1 _ _)
    have hu2 := hunit (H 2 3) (hH.1 _ _)
    linear_combination -conj (H 2 3)*H 2 3*hu1-hu2
  rw [hmul,norm_mul,norm_mul,Complex.norm_conj,
    unit_entry_norm _ (hH.1 _ _),unit_entry_norm _ (hH.1 _ _),one_mul,one_mul]

/-- If two unit pairs have the same Fourier orientation within epsilon,
their anchored inner product remains at least 3-4 epsilon in norm. -/
theorem same_orientation_inner_lower (a b c d P Q : ℂ)
    (hc : Complex.normSq c=1) (hd : Complex.normSq d=1)
    (hP : Complex.normSq P=1) (hQ : Complex.normSq Q=1)
    (ε : ℝ) (ha : ‖a-P‖ ≤ ε) (hb : ‖b-Q‖ ≤ ε)
    (hcc : ‖c-P‖ ≤ ε) (hdd : ‖d-Q‖ ≤ ε) :
    3-4*ε ≤ ‖1+a*conj c+b*conj d‖ := by
  have hh := pair_inner_difference_norm a b c d P Q P Q hc hd hP hQ
  have hbase : (1:ℂ)+P*conj P+Q*conj Q=3 := by
    simp [Complex.mul_conj,hP,hQ]; norm_num
  rw [hbase] at hh
  have ht := norm_sub_norm_le (3:ℂ) (1+a*conj c+b*conj d)
  rw [norm_sub_rev] at ht
  norm_num at ht
  linarith

/-- A Boolean records the complete two-entry side-pair representation;
true means the plus branch occupies the first remaining side column. -/
def rowOrientation (H : Mat6) (i : Fin 3) (plusFirst : Bool) : Prop :=
  let a := sideArgument (blockE H) (fun k => blockB H k 0) i
  sideRowNormalized H i 1=(if plusFirst then pairPlus a else pairMinus a) ∧
    sideRowNormalized H i 2=(if plusFirst then pairMinus a else pairPlus a)

theorem physical_rowOrientation_exists {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    ∃ plusFirst : Bool, rowOrientation H i plusFirst := by
  have h := physical_seed_side_row_pair01 hH hd b r hball hr i hi
  rw [← row_sideArgument_eq H hd i] at h
  rcases h with h | h
  · exact ⟨true,by simpa [rowOrientation,sideRowNormalized,blockB,bottomIndex] using h⟩
  · exact ⟨false,by simpa [rowOrientation,sideRowNormalized,blockB,bottomIndex] using h⟩

theorem physical_same_rowOrientation_impossible {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (orient : Bool)
    (h1 : rowOrientation H 1 orient) (h2 : rowOrientation H 2 orient) : False := by
  have hs := seedBall_side_sum_bounds hd b r hball
  have he1 := anchored_pair_distance01 (sideSum (blockE H) 1) (blockB H 1 0)
    (hH.1 _ _) r (hs.1 1 (by decide)) hr
  have he2 := anchored_pair_distance01 (sideSum (blockE H) 2) (blockB H 2 0)
    (hH.1 _ _) r (hs.1 2 (by decide)) hr
  have hb := physical_rightGram_seed_bound hH hd b r hball
  rw [← physical_normalized_side_inner_norm hH] at hb
  have hP := pairPlus_unit (-1) (by norm_num) (by norm_num)
  have hQ := pairMinus_unit (-1) (by norm_num) (by norm_num)
  cases orient
  · simp only [rowOrientation,Bool.false_eq_true,↓reduceIte] at h1 h2
    have hl := same_orientation_inner_lower
      (sideRowNormalized H 1 1) (sideRowNormalized H 1 2)
      (sideRowNormalized H 2 1) (sideRowNormalized H 2 2)
      (pairMinus (-1)) (pairPlus (-1))
      (physical_sideRowNormalized_unit hH 2 1) (physical_sideRowNormalized_unit hH 2 2)
      hQ hP ((17/3)*r)
      (by rw [h1.1]; exact he1.2) (by rw [h1.2]; exact he1.1)
      (by rw [h2.1]; exact he2.2) (by rw [h2.2]; exact he2.1)
    linarith [radius01_orientation_margin r hr]
  · simp only [rowOrientation,↓reduceIte] at h1 h2
    have hl := same_orientation_inner_lower
      (sideRowNormalized H 1 1) (sideRowNormalized H 1 2)
      (sideRowNormalized H 2 1) (sideRowNormalized H 2 2)
      (pairPlus (-1)) (pairMinus (-1))
      (physical_sideRowNormalized_unit hH 2 1) (physical_sideRowNormalized_unit hH 2 2)
      hP hQ ((17/3)*r)
      (by rw [h1.1]; exact he1.1) (by rw [h1.2]; exact he1.2)
      (by rw [h2.1]; exact he2.1) (by rw [h2.2]; exact he2.2)
    linarith [radius01_orientation_margin r hr]

/-- The actual two side rows must have opposite orientations, throughout
the radius-.1 envelope. Both resulting global orders are retained. -/
theorem physical_side_rows_opposite01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) :
    ∃ orient : Bool, rowOrientation H 1 orient ∧ rowOrientation H 2 (!orient) := by
  obtain ⟨o1,h1⟩ := physical_rowOrientation_exists hH hd b r hball hr 1 (by decide)
  obtain ⟨o2,h2⟩ := physical_rowOrientation_exists hH hd b r hball hr 2 (by decide)
  have hn : o1 ≠ o2 := by
    intro he
    subst o2
    exact physical_same_rowOrientation_impossible hH hd b r hball hr o1 h1 h2
  refine ⟨o1,h1,?_⟩
  cases o1 <;> cases o2 <;> simp_all

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.conjugate_product_difference_norm
#print axioms Centiradian20261006.ChartRadius0120261006.pair_inner_difference_norm
#print axioms Centiradian20261006.ChartRadius0120261006.reference_pair_inner_cancel
#print axioms Centiradian20261006.ChartRadius0120261006.seed_pair_inner_cancel
#print axioms Centiradian20261006.ChartRadius0120261006.phase_unit
#print axioms Centiradian20261006.ChartRadius0120261006.physical_rightGram_seed_bound
#print axioms Centiradian20261006.ChartRadius0120261006.physical_sideRowNormalized_unit
#print axioms Centiradian20261006.ChartRadius0120261006.physical_normalized_side_inner_norm
#print axioms Centiradian20261006.ChartRadius0120261006.same_orientation_inner_lower
#print axioms Centiradian20261006.ChartRadius0120261006.physical_rowOrientation_exists
#print axioms Centiradian20261006.ChartRadius0120261006.physical_same_rowOrientation_impossible
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_rows_opposite01
