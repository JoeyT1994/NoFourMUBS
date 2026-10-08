import PhysicalLambdaIntervals
import FourCircleAtlas

/-! Rational polynomial inputs from ONE four-phase seed cell.  The horizontal
and vertical inputs use the same four rectangles; only their b/c incidence is
swapped. Sheet memberships and later radical certificates are explicit inputs,
not consequences claimed by this polynomial stage. -/
namespace Mub6.Classification.SharedSeedIntervals
open Matrix Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.CarrierIntervals Mub6.Classification.RadicalIntervals
open Mub6.Classification.GoodMinor
open Mub6.Classification.CompactCover Mub6.Classification.FourPhase
open Mub6.Classification.PoleAtlas FourierSeedBinding
open Hadamard6Extensions.FourierSide
noncomputable section

abbrev SeedBoxes := Fin 4 → RationalRectangle

structure SidePolynomialBoxes where
  s : RationalRectangle
  t : RationalRectangle
  r : RationalRectangle

structure CoversSidePolynomials (B : SidePolynomialBoxes) (s t r : ℂ) : Prop where
  s_mem : MemRectangle B.s s
  t_mem : MemRectangle B.t t
  r_mem : MemRectangle B.r r

def realBox (a : Interval) : RationalRectangle := rectangle a (point 0)

theorem realBox_sound {a : Interval} {x : ℝ} (hx : Mem a x) :
    MemRectangle (realBox a) (x : ℂ) := by
  rw [realBox, mem_rectangle_iff]
  exact ⟨hx, by simpa using mem_point 0⟩

theorem pointBox_sound (q : ℚ) : MemRectangle (boxPoint q 0) (q : ℂ) := by
  rw [show (q : ℂ) = (⟨(q : ℝ), 0⟩ : ℂ) by apply Complex.ext <;> norm_num]
  simpa only [Rat.cast_zero] using mem_boxPoint_complex q 0

def rowSumBox (a b : RationalRectangle) : RationalRectangle :=
  boxNeg (boxAdd (boxAdd (boxPoint 1 0) a) b)

def rowCrossBox (a b c d : RationalRectangle) : RationalRectangle :=
  boxNeg (boxAdd (boxAdd (boxPoint 1 0) (boxMul c (boxConj a)))
    (boxMul d (boxConj b)))

def horizontalBoxes (B : SeedBoxes) : SidePolynomialBoxes :=
  ⟨rowSumBox (B 0) (B 1), rowSumBox (B 2) (B 3),
    rowCrossBox (B 0) (B 1) (B 2) (B 3)⟩

def verticalBoxes (B : SeedBoxes) : SidePolynomialBoxes :=
  ⟨rowSumBox (B 0) (B 2), rowSumBox (B 1) (B 3),
    rowCrossBox (B 0) (B 2) (B 1) (B 3)⟩

theorem rowSumBox_sound {A B : RationalRectangle} {a b : ℂ}
    (ha : MemRectangle A a) (hb : MemRectangle B b) :
    MemRectangle (rowSumBox A B) (rowS a b) := by
  exact mem_boxNeg (mem_boxAdd (mem_boxAdd (by simpa only [Rat.cast_one] using pointBox_sound 1) ha) hb)

theorem rowCrossBox_sound {A B C D : RationalRectangle} {a b c d : ℂ}
    (ha : MemRectangle A a) (hb : MemRectangle B b)
    (hc : MemRectangle C c) (hd : MemRectangle D d) :
    MemRectangle (rowCrossBox A B C D) (rowR a b c d) := by
  exact mem_boxNeg (mem_boxAdd (mem_boxAdd (by simpa only [Rat.cast_one] using pointBox_sound 1)
    (mem_boxMul hc (mem_boxConj ha))) (mem_boxMul hd (mem_boxConj hb)))

theorem shared_seed_polynomial_sound {B : SeedBoxes} {a b c d : ℂ}
    (ha : MemRectangle (B 0) a) (hb : MemRectangle (B 1) b)
    (hc : MemRectangle (B 2) c) (hd : MemRectangle (B 3) d) :
    CoversSidePolynomials (horizontalBoxes B) (rowS a b) (rowT c d) (rowR a b c d) ∧
    CoversSidePolynomials (verticalBoxes B) (rowS a c) (rowT b d) (rowR a c b d) := by
  exact ⟨⟨rowSumBox_sound ha hb, rowSumBox_sound hc hd,
    rowCrossBox_sound ha hb hc hd⟩,
    ⟨rowSumBox_sound ha hc, rowSumBox_sound hb hd, rowCrossBox_sound ha hc hb hd⟩⟩

def gramBox (B : SidePolynomialBoxes) : Rect3 :=
  ![![boxPoint 3 0, boxConj B.s, boxConj B.t],
    ![B.s, boxPoint 3 0, boxConj B.r], ![B.t, B.r, boxPoint 3 0]]

def qBox (B : SidePolynomialBoxes) : Fin 3 → Interval :=
  ![sub (point 9) (boxNormSq B.r), sub (point 9) (boxNormSq B.t),
    sub (point 9) (boxNormSq B.s)]

def gBox (B : SidePolynomialBoxes) : Interval :=
  add (sub (point 27) (mul (point 3)
    (add (add (boxNormSq B.s) (boxNormSq B.t)) (boxNormSq B.r))))
    (mul (point 2) (reInterval (boxMul (boxMul B.r B.s) (boxConj B.t))))

def sigmaBox (B : SidePolynomialBoxes) : Interval :=
  add (add (qBox B 0) (qBox B 1)) (qBox B 2)

def etaBox (B : SidePolynomialBoxes) : Interval :=
  sub (add (gBox B) (point 36)) (mul (point 2) (sigmaBox B))

def chiBox (B : SidePolynomialBoxes) : Interval :=
  add (add (mul (mul (sub (qBox B 0) (point 8)) (sub (qBox B 1) (point 8)))
      (sub (qBox B 2) (point 8)))
    (mul (point 2) (square (sub (sigmaBox B) (point 16)))))
    (mul (sub (point 12) (sigmaBox B)) (gBox B))

theorem gramBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) :
    MemMatrix (gramBox B) (FourierGramNumerators.gram s t r) := by
  intro i j
  fin_cases i <;> fin_cases j <;>
    simp only [gramBox, FourierGramNumerators.gram, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons,
      Matrix.of_apply]
  all_goals first
    | exact pointBox_sound 3
    | exact h.s_mem
    | exact h.t_mem
    | exact h.r_mem
    | exact mem_boxConj h.s_mem
    | exact mem_boxConj h.t_mem
    | exact mem_boxConj h.r_mem

theorem qBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) (i : Fin 3) :
    Mem (qBox B i) (FourierGramNumerators.q s t r i) := by
  fin_cases i <;>
    simp only [qBox, FourierGramNumerators.q, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  · exact mem_sub (mem_point 9) (mem_boxNormSq h.r_mem)
  · exact mem_sub (mem_point 9) (mem_boxNormSq h.t_mem)
  · exact mem_sub (mem_point 9) (mem_boxNormSq h.s_mem)

theorem gBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) : Mem (gBox B) (FourierGramNumerators.g s t r) := by
  have ht := mem_boxMul (mem_boxMul h.r_mem h.s_mem) (mem_boxConj h.t_mem)
  exact mem_add (mem_sub (mem_point 27) (mem_mul (mem_point 3)
    (mem_add (mem_add (mem_boxNormSq h.s_mem) (mem_boxNormSq h.t_mem))
      (mem_boxNormSq h.r_mem)))) (mem_mul (mem_point 2) ⟨ht.1, ht.2.1⟩)

theorem sigmaBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) :
    Mem (sigmaBox B) (FourierGramNumerators.sigma s t r) :=
  mem_add (mem_add (qBox_sound h 0) (qBox_sound h 1)) (qBox_sound h 2)

theorem etaBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) : Mem (etaBox B) (FourierGramNumerators.eta s t r) :=
  mem_sub (mem_add (gBox_sound h) (mem_point 36)) (mem_mul (mem_point 2) (sigmaBox_sound h))

theorem chiBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) : Mem (chiBox B) (FourierGramNumerators.chi s t r) := by
  simpa only [chiBox, FourierGramNumerators.chi, pow_two, Rat.cast_ofNat] using
    mem_add (mem_add (mem_mul (mem_mul (mem_sub (qBox_sound h 0) (mem_point 8))
      (mem_sub (qBox_sound h 1) (mem_point 8))) (mem_sub (qBox_sound h 2) (mem_point 8)))
      (mem_mul (mem_point 2) (mem_square (mem_sub (sigmaBox_sound h) (mem_point 16)))))
      (mem_mul (mem_sub (mem_point 12) (sigmaBox_sound h)) (gBox_sound h))

def numeratorBox (B : SidePolynomialBoxes) : Fin 3 → RationalRectangle :=
  ![boxAdd (boxAdd (boxMul B.r (boxPow B.s 2)) (boxMul (boxConj B.r) (boxPow B.t 2)))
      (boxMul (boxMul (boxSub (boxPoint 3 0) (realBox (boxNormSq B.r))) B.s) B.t),
    boxAdd (boxAdd (boxMul B.t (boxPow (boxConj B.s) 2))
      (boxMul (boxPow B.r 2) (boxConj B.t)))
      (boxMul (boxMul (boxSub (boxPoint 3 0) (realBox (boxNormSq B.t))) B.r) (boxConj B.s)),
    boxAdd (boxAdd (boxMul B.s (boxPow (boxConj B.t) 2))
      (boxMul (boxPow (boxConj B.r) 2) (boxConj B.s)))
      (boxMul (boxMul (boxSub (boxPoint 3 0) (realBox (boxNormSq B.s)))
        (boxConj B.r)) (boxConj B.t))]

theorem numeratorBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) (i : Fin 3) :
    MemRectangle (numeratorBox B i) (FourierGramNumerators.numerator s t r i) := by
  fin_cases i <;>
    simp only [numeratorBox, FourierGramNumerators.numerator, Matrix.cons_val_zero,
      Matrix.cons_val_one, Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  · exact mem_boxAdd (mem_boxAdd (mem_boxMul h.r_mem (mem_boxPow h.s_mem 2))
      (mem_boxMul (mem_boxConj h.r_mem) (mem_boxPow h.t_mem 2)))
      (mem_boxMul (mem_boxMul (mem_boxSub (pointBox_sound 3)
        (realBox_sound (mem_boxNormSq h.r_mem))) h.s_mem) h.t_mem)
  · exact mem_boxAdd (mem_boxAdd (mem_boxMul h.t_mem (mem_boxPow (mem_boxConj h.s_mem) 2))
      (mem_boxMul (mem_boxPow h.r_mem 2) (mem_boxConj h.t_mem)))
      (mem_boxMul (mem_boxMul (mem_boxSub (pointBox_sound 3)
        (realBox_sound (mem_boxNormSq h.t_mem))) h.r_mem) (mem_boxConj h.s_mem))
  · exact mem_boxAdd (mem_boxAdd (mem_boxMul h.s_mem (mem_boxPow (mem_boxConj h.t_mem) 2))
      (mem_boxMul (mem_boxPow (mem_boxConj h.r_mem) 2) (mem_boxConj h.s_mem)))
      (mem_boxMul (mem_boxMul (mem_boxSub (pointBox_sound 3)
        (realBox_sound (mem_boxNormSq h.s_mem))) (mem_boxConj h.r_mem)) (mem_boxConj h.t_mem))

def denominatorBox (B : SidePolynomialBoxes) (Z : RationalRectangle) :
    Fin 3 → RationalRectangle :=
  fun i => boxAdd (realBox (gBox B)) (boxMul Z (realBox (qBox B i)))

theorem denominatorBox_sound {B : SidePolynomialBoxes} {Z : RationalRectangle} {s t r z : ℂ}
    (h : CoversSidePolynomials B s t r) (hz : MemRectangle Z z) (i : Fin 3) :
    MemRectangle (denominatorBox B Z i) (liftedDenominator s t r z i) :=
  mem_boxAdd (realBox_sound (gBox_sound h)) (mem_boxMul hz (realBox_sound (qBox_sound h i)))

def circleSeedBoxes (signs : SeedSigns) (T : Fin 4 → Interval) : SeedBoxes :=
  fun i => circleBox (signs i) (T i)

theorem circleSeedBoxes_sound (signs : SeedSigns) {T : Fin 4 → Interval} {t : SeedParameters}
    (ht : ∀ i, Mem (T i) (t i)) :
    ∀ i, MemRectangle (circleSeedBoxes signs T i) (circleSeed signs t i) :=
  fun i => circleBox_sound (signs i) (ht i)

/-- The only initial rectangle premise is membership of the SAME four physical
seed entries. Both actual side triples are consequences. -/
theorem physical_shared_seed_inputs {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i)) :
    CoversSidePolynomials (horizontalBoxes B)
      (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    CoversSidePolynomials (verticalBoxes B)
      (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) := by
  obtain ⟨hh, hv⟩ := shared_seed_polynomial_sound (hB 0) (hB 1) (hB 2) (hB 3)
  obtain ⟨hs, ht, hr⟩ := horizontal_moments hH
  obtain ⟨vs, vt, vr⟩ := vertical_moments hH
  rw [hs, ht, hr, vs, vt, vr]
  exact ⟨hh, hv⟩

theorem physical_circle_shared_seed_inputs {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (signs : SeedSigns) {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i)) :
    CoversSidePolynomials (horizontalBoxes (circleSeedBoxes signs T))
      (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    CoversSidePolynomials (verticalBoxes (circleSeedBoxes signs T))
      (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) := by
  apply physical_shared_seed_inputs hH
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

/-- Polynomial producers discharge all s,t,r,numerator,denominator premises of
the prior quotient-moment consumer. Sheet and omega coverage remain explicit. -/
theorem polynomial_quotient_moment_cover (x y : Fin 3 → ℂ) (w : ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y)
    (hD : (Hadamard6Extensions.FourierSide.actualSide x y).det ≠ 0)
    {B : SidePolynomialBoxes} (h : CoversSidePolynomials B (sum3 x) (sum3 y) (cross3 x y))
    {Z W : RationalRectangle} (hz : MemRectangle Z (actualSheet x y))
    (hw : MemRectangle W w) :
    CoversSideMoments
      (lambdaMomentBoxes B.s B.t B.r Z W
        (recoveredLambdaBoxes (numeratorBox B) (denominatorBox B Z))) x y w :=
  actual_quotient_moment_cover x y w hx hy hD h.s_mem h.t_mem h.r_mem hz hw
    (numeratorBox_sound h) (denominatorBox_sound h hz)

def radicandBox (B : SidePolynomialBoxes) : Interval :=
  sub (mul (mul (point 4) (square (gBox B))) (etaBox B)) (square (chiBox B))

theorem radicandBox_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) :
    Mem (radicandBox B) (FourierRadicalGuards.radicand
      (FourierGramNumerators.g s t r) (FourierGramNumerators.chi s t r)
      (FourierGramNumerators.eta s t r)) := by
  simpa only [radicandBox, FourierRadicalGuards.radicand, pow_two, Rat.cast_ofNat] using
    mem_sub (mem_mul (mem_mul (mem_point 4) (mem_square (gBox_sound h))) (etaBox_sound h))
      (mem_square (chiBox_sound h))

structure CoversGramPolynomials (B : SidePolynomialBoxes) (s t r : ℂ) : Prop where
  moments : CoversSidePolynomials B s t r
  gram_mem : MemMatrix (gramBox B) (FourierGramNumerators.gram s t r)
  g_mem : Mem (gBox B) (FourierGramNumerators.g s t r)
  q_mem : ∀ i, Mem (qBox B i) (FourierGramNumerators.q s t r i)
  sigma_mem : Mem (sigmaBox B) (FourierGramNumerators.sigma s t r)
  eta_mem : Mem (etaBox B) (FourierGramNumerators.eta s t r)
  chi_mem : Mem (chiBox B) (FourierGramNumerators.chi s t r)
  radicand_mem : Mem (radicandBox B) (FourierRadicalGuards.radicand
    (FourierGramNumerators.g s t r) (FourierGramNumerators.chi s t r)
    (FourierGramNumerators.eta s t r))
  numerator_mem : ∀ i, MemRectangle (numeratorBox B i) (FourierGramNumerators.numerator s t r i)

theorem polynomial_data_sound {B : SidePolynomialBoxes} {s t r : ℂ}
    (h : CoversSidePolynomials B s t r) : CoversGramPolynomials B s t r :=
  ⟨h, gramBox_sound h, gBox_sound h, qBox_sound h, sigmaBox_sound h, etaBox_sound h,
    chiBox_sound h, radicandBox_sound h, numeratorBox_sound h⟩

/-- Both actual Gram polynomial packages are derived from one seed box premise. -/
theorem physical_shared_seed_gram_data {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i)) :
    CoversGramPolynomials (horizontalBoxes B)
      (sideS (northeast H)) (sideT (northeast H)) (sideR (northeast H)) ∧
    CoversGramPolynomials (verticalBoxes B)
      (sideS ((southwest H)ᵀ)) (sideT ((southwest H)ᵀ)) (sideR ((southwest H)ᵀ)) := by
  obtain ⟨hh, hv⟩ := physical_shared_seed_inputs hH hB
  exact ⟨polynomial_data_sound hh, polynomial_data_sound hv⟩

def meetInterval (a b : Interval) : Interval := ⟨max a.lo b.lo, min a.hi b.hi⟩

theorem meetInterval_sound {a b : Interval} {x : ℝ} (ha : Mem a x) (hb : Mem b x) :
    Mem (meetInterval a b) x := by
  simp only [Mem, meetInterval, Rat.cast_max, Rat.cast_min]
  exact ⟨max_le ha.1 hb.1, le_min ha.2 hb.2⟩

/-- The physical g, eta, chi and radicand are SHARED by the two sides.  Thus both
computed intervals may be intersected without assuming independent side seeds. -/
theorem physical_shared_seed_invariants {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i)) :
    Mem (meetInterval (gBox (horizontalBoxes B)) (gBox (verticalBoxes B)))
      (g (H 1 1) (H 1 2) (H 2 1) (H 2 2)) ∧
    Mem (meetInterval (etaBox (horizontalBoxes B)) (etaBox (verticalBoxes B)))
      (eta (H 1 1) (H 1 2) (H 2 1) (H 2 2)) ∧
    Mem (meetInterval (chiBox (horizontalBoxes B)) (chiBox (verticalBoxes B)))
      (chi (H 1 1) (H 1 2) (H 2 1) (H 2 2)) ∧
    Mem (meetInterval (radicandBox (horizontalBoxes B)) (radicandBox (verticalBoxes B)))
      (radicand (H 1 1) (H 1 2) (H 2 1) (H 2 2)) := by
  obtain ⟨hh, hv⟩ := physical_shared_seed_gram_data hH hB
  have hs := horizontal_seed_scalars hH
  have vs := vertical_seed_scalars hH
  exact ⟨meetInterval_sound (hs.1 ▸ hh.g_mem) (vs.1 ▸ hv.g_mem),
    meetInterval_sound (hs.2.1 ▸ hh.eta_mem) (vs.2.1 ▸ hv.eta_mem),
    meetInterval_sound (hs.2.2.1 ▸ hh.chi_mem) (vs.2.2.1 ▸ hv.chi_mem),
    meetInterval_sound (hs.2.2.2.2 ▸ hh.radicand_mem) (vs.2.2.2.2 ▸ hv.radicand_mem)⟩

def quotientMomentBoxes (B : SidePolynomialBoxes) (Z W : RationalRectangle) : SideMomentBoxes :=
  lambdaMomentBoxes B.s B.t B.r Z W
    (recoveredLambdaBoxes (numeratorBox B) (denominatorBox B Z))

/-- Complete binding into the prior two physical-side moment consumers, with
only the actual sheet boxes and omega membership still supplied externally. -/
theorem physical_shared_seed_quotient_moments {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    {B : SeedBoxes} (hB : ∀ i, MemRectangle (B i) (seedEntry H i))
    (w : ℂ) {ZH ZV W : RationalRectangle}
    (hzH : MemRectangle ZH (sideSheet (northeast H)))
    (hzV : MemRectangle ZV (sideSheet ((southwest H)ᵀ)))
    (hw : MemRectangle W w) :
    CoversSideMoments (quotientMomentBoxes (horizontalBoxes B) ZH W)
      (northeast H 1) (northeast H 2) w ∧
    CoversSideMoments (quotientMomentBoxes (verticalBoxes B) ZV W)
      ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) w := by
  obtain ⟨hh, hv⟩ := physical_shared_seed_inputs hH hB
  have hdH : (Hadamard6Extensions.FourierSide.actualSide
      (northeast H 1) (northeast H 2)).det ≠ 0 := by
    rw [← Hadamard6Extensions.FourPhaseGram.scalar_side_eq]
    exact (horizontal_actualSide hH) ▸ horizontal_det_ne_zero hH
  have hdV : (Hadamard6Extensions.FourierSide.actualSide
      ((southwest H)ᵀ 1) ((southwest H)ᵀ 2)).det ≠ 0 := by
    rw [← Hadamard6Extensions.FourPhaseGram.scalar_side_eq]
    exact (vertical_actualSide hH) ▸ vertical_det_ne_zero hH
  exact ⟨polynomial_quotient_moment_cover _ _ w (horizontal_phase hH 1)
      (horizontal_phase hH 2) hdH hh hzH hw,
    polynomial_quotient_moment_cover _ _ w (vertical_phase hH 1)
      (vertical_phase hH 2) hdV hv hzV hw⟩

/-- Circle-coordinate cell interface to both actual moment consumers. The four
real interval memberships and one exact seed chart identity feed both sides. -/
theorem physical_circle_shared_quotient_moments {H : Mat6} (hH : NormalizedGoodSideCarrier H)
    (signs : SeedSigns) {T : Fin 4 → Interval} {t : SeedParameters}
    (he : seedEntry H = circleSeed signs t) (ht : ∀ i, Mem (T i) (t i))
    (w : ℂ) {ZH ZV W : RationalRectangle}
    (hzH : MemRectangle ZH (sideSheet (northeast H)))
    (hzV : MemRectangle ZV (sideSheet ((southwest H)ᵀ)))
    (hw : MemRectangle W w) :
    CoversSideMoments (quotientMomentBoxes (horizontalBoxes (circleSeedBoxes signs T)) ZH W)
      (northeast H 1) (northeast H 2) w ∧
    CoversSideMoments (quotientMomentBoxes (verticalBoxes (circleSeedBoxes signs T)) ZV W)
      ((southwest H)ᵀ 1) ((southwest H)ᵀ 2) w := by
  apply physical_shared_seed_quotient_moments hH _ w hzH hzV hw
  intro i
  rw [he]
  exact circleSeedBoxes_sound signs ht i

#print axioms radicandBox_sound
#print axioms polynomial_data_sound
#print axioms physical_shared_seed_gram_data
#print axioms meetInterval_sound
#print axioms physical_shared_seed_invariants
#print axioms physical_shared_seed_quotient_moments
#print axioms physical_circle_shared_quotient_moments
#print axioms realBox_sound
#print axioms pointBox_sound
#print axioms rowSumBox_sound
#print axioms rowCrossBox_sound
#print axioms shared_seed_polynomial_sound
#print axioms gramBox_sound
#print axioms qBox_sound
#print axioms gBox_sound
#print axioms sigmaBox_sound
#print axioms etaBox_sound
#print axioms chiBox_sound
#print axioms numeratorBox_sound
#print axioms denominatorBox_sound
#print axioms circleSeedBoxes_sound
#print axioms physical_shared_seed_inputs
#print axioms physical_circle_shared_seed_inputs
#print axioms polynomial_quotient_moment_cover
end
end Mub6.Classification.SharedSeedIntervals
