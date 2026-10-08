import RawColumnAmplitude
import ScalarRoundingBounds

/-! Soundness of the literal rounded-centre overlap formula and its margin37.
The two signed quotient errors and norm-floor error are explicit. This does
not claim a Lean implementation of C++ signed division, isqrt, or its tables. -/
noncomputable section
open ComplexConjugate
open scoped BigOperators

namespace Seed0024ClusterTube20261007

theorem rounded_product_predivision_error (C T c t : ℂ) (Q : ℝ)
    (hQ : 1≤Q) (hC : ‖C‖=1) (hT : ‖T‖=1)
    (hc : ‖c-(Q:ℂ)*C‖<(3:ℝ)/2) (ht : ‖t-(Q:ℂ)*T‖<(3:ℝ)/2) :
    ‖conj c*t/(Q:ℂ)-(Q:ℂ)*(conj C*T)‖<(21:ℝ)/4 := by
  let ec : ℂ := c-(Q:ℂ)*C
  let et : ℂ := t-(Q:ℂ)*T
  have hQpos : 0<Q := by linarith
  have hQne : (Q:ℂ)≠0 := by exact_mod_cast (ne_of_gt hQpos)
  have hnormQ : ‖(Q:ℂ)‖=Q := by
    rw [Complex.norm_real,Real.norm_eq_abs,abs_of_pos hQpos]
  have he : conj c*t/(Q:ℂ)-(Q:ℂ)*(conj C*T)=
      conj ec*T+conj C*et+conj ec*et/(Q:ℂ) := by
    dsimp [ec,et]
    simp only [map_sub,map_mul,Complex.conj_ofReal]
    field_simp
    <;> ring
  have hp : ‖ec‖*‖et‖≤(9:ℝ)/4 := by
    have h := mul_le_mul hc.le ht.le (norm_nonneg et) (by norm_num : (0:ℝ)≤3/2)
    norm_num at h
    exact h
  have hpd : ‖ec‖*‖et‖/Q≤(9:ℝ)/4 := by
    apply (div_le_iff₀ hQpos).2
    nlinarith
  rw [he]
  calc
    _ ≤ ‖conj ec*T+conj C*et‖+‖conj ec*et/(Q:ℂ)‖ := norm_add_le _ _
    _ ≤ (‖conj ec*T‖+‖conj C*et‖)+‖conj ec*et/(Q:ℂ)‖ :=
      add_le_add (norm_add_le _ _) (le_refl _)
    _ = ‖ec‖+‖et‖+‖ec‖*‖et‖/Q := by
      rw [norm_mul,Complex.norm_conj,hT,mul_one,norm_mul,Complex.norm_conj,hC,
        one_mul,norm_div,norm_mul,Complex.norm_conj,hnormQ]
    _ < (21:ℝ)/4 := by change ‖ec‖<3/2 at hc; change ‖et‖<3/2 at ht; linarith

theorem rounded_product_error_lt (C T c t p : ℂ) (Q : ℝ)
    (hQ : 1≤Q) (hC : ‖C‖=1) (hT : ‖T‖=1)
    (hcr : |(c-(Q:ℂ)*C).re|<1) (hci : |(c-(Q:ℂ)*C).im|<1)
    (htr : |(t-(Q:ℂ)*T).re|<1) (hti : |(t-(Q:ℂ)*T).im|<1)
    (hpr : |p.re-(c.re*t.re+c.im*t.im)/Q|<1)
    (hpi : |p.im-(c.re*t.im-c.im*t.re)/Q|<1) :
    ‖p-(Q:ℂ)*(conj C*T)‖<(27:ℝ)/4 := by
  have hp : ‖p-conj c*t/(Q:ℂ)‖<(3:ℝ)/2 := by
    apply coordinate_error_norm_lt
    · simpa only [Complex.sub_re,Complex.div_ofReal_re,Complex.mul_re,
        Complex.conj_re,Complex.conj_im,neg_mul,sub_neg_eq_add] using hpr
    · simpa only [Complex.sub_im,Complex.div_ofReal_im,Complex.mul_im,
        Complex.conj_re,Complex.conj_im,neg_mul,←sub_eq_add_neg] using hpi
  have hprod := rounded_product_predivision_error C T c t Q hQ hC hT
    (coordinate_error_norm_lt _ hcr hci) (coordinate_error_norm_lt _ htr hti)
  have htri : ‖p-(Q:ℂ)*(conj C*T)‖≤
      ‖p-conj c*t/(Q:ℂ)‖+‖conj c*t/(Q:ℂ)-(Q:ℂ)*(conj C*T)‖ := by
    simpa only [dist_eq_norm] using dist_triangle p (conj c*t/(Q:ℂ)) ((Q:ℂ)*(conj C*T))
  linarith

theorem five_products_sum_error (C T c t p : Fin 5 → ℂ) (Q : ℝ)
    (hQ : 1≤Q) (hC : ∀i,‖C i‖=1) (hT : ∀i,‖T i‖=1)
    (hcr : ∀i,|(c i-(Q:ℂ)*C i).re|<1) (hci : ∀i,|(c i-(Q:ℂ)*C i).im|<1)
    (htr : ∀i,|(t i-(Q:ℂ)*T i).re|<1) (hti : ∀i,|(t i-(Q:ℂ)*T i).im|<1)
    (hpr : ∀i,|(p i).re-((c i).re*(t i).re+(c i).im*(t i).im)/Q|<1)
    (hpi : ∀i,|(p i).im-((c i).re*(t i).im-(c i).im*(t i).re)/Q|<1) :
    ‖((Q:ℂ)+∑i,p i)-(Q:ℂ)*(1+∑i,conj (C i)*T i)‖<(135:ℝ)/4 := by
  have he : ((Q:ℂ)+∑i,p i)-(Q:ℂ)*(1+∑i,conj (C i)*T i)=
      ∑i,(p i-(Q:ℂ)*(conj (C i)*T i)) := by
    rw [Finset.sum_sub_distrib,←Finset.mul_sum]
    ring
  rw [he]
  have hs : (∑i,‖p i-(Q:ℂ)*(conj (C i)*T i)‖)<∑_i : Fin 5,(27:ℝ)/4 := by
    apply Finset.sum_lt_sum_of_nonempty
    · simp
    · intro i _
      exact rounded_product_error_lt (C i) (T i) (c i) (t i) (p i) Q hQ
        (hC i) (hT i) (hcr i) (hci i) (htr i) (hti i) (hpr i) (hpi i)
  norm_num at hs
  exact (norm_sum_le (s := Finset.univ) _).trans_lt hs

theorem norm_floor_minus_37_lower (S s : ℂ) (Q r : ℝ)
    (hQ : 0≤Q) (happrox : ‖s-(Q:ℂ)*S‖<(135:ℝ)/4)
    (hfloor : |r-‖s‖|<1) : max 0 (r-37)≤Q*‖S‖ := by
  apply max_le (mul_nonneg hQ (norm_nonneg _))
  have hn := abs_norm_sub_norm_le s ((Q:ℂ)*S)
  rw [norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg hQ] at hn
  have hu := (le_abs_self (‖s‖-Q*‖S‖)).trans hn
  have hf := (abs_lt.mp hfloor).2
  linarith

theorem raw_overlap_first_coordinate_one (C M : Fin 6 → ℂ)
    (hC0 : C 0=1) (hM0 : M 0=1) :
    rawOverlap C M=1+∑i : Fin 5,conj (C i.succ)*M i.succ := by
  rw [rawOverlap,Fin.sum_univ_succ,hC0,hM0,map_one,one_mul]

theorem literal_rounded_centre_lo_lower (C M : Fin 6 → ℂ)
    (hC0 : C 0=1) (hM0 : M 0=1)
    (hC : ∀i,‖C i‖=1) (hM : ∀i,‖M i‖=1)
    (c t p : Fin 5 → ℂ) (Q r : ℝ) (hQ : 1≤Q)
    (hcr : ∀i,|(c i-(Q:ℂ)*C i.succ).re|<1)
    (hci : ∀i,|(c i-(Q:ℂ)*C i.succ).im|<1)
    (htr : ∀i,|(t i-(Q:ℂ)*M i.succ).re|<1)
    (hti : ∀i,|(t i-(Q:ℂ)*M i.succ).im|<1)
    (hpr : ∀i,|(p i).re-((c i).re*(t i).re+(c i).im*(t i).im)/Q|<1)
    (hpi : ∀i,|(p i).im-((c i).re*(t i).im-(c i).im*(t i).re)/Q|<1)
    (hfloor : |r-‖(Q:ℂ)+∑i,p i‖|<1) :
    max 0 (r-37)≤Q*‖rawOverlap C M‖ := by
  have he := five_products_sum_error (fun i => C i.succ) (fun i => M i.succ)
    c t p Q hQ (fun i => hC _) (fun i => hM _) hcr hci htr hti hpr hpi
  rw [←raw_overlap_first_coordinate_one C M hC0 hM0] at he
  exact norm_floor_minus_37_lower (rawOverlap C M) ((Q:ℂ)+∑i,p i) Q r
    (by linarith) he hfloor

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.rounded_product_predivision_error
#print axioms Seed0024ClusterTube20261007.rounded_product_error_lt
#print axioms Seed0024ClusterTube20261007.five_products_sum_error
#print axioms Seed0024ClusterTube20261007.norm_floor_minus_37_lower
#print axioms Seed0024ClusterTube20261007.raw_overlap_first_coordinate_one
#print axioms Seed0024ClusterTube20261007.literal_rounded_centre_lo_lower
