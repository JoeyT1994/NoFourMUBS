import CircleArc
import ChartPartition

namespace Mub6.Numerical.CircleArc
open Mub6 IntegerIntervals CircleCharts CircleCharts.Partition

def checkImageOption (T R : ℕ) (p : Option ZInterval) (image : Option ZBox) : Bool :=
  match image, p with
  | none, _ => true
  | some q, some d => checkImage T R d q
  | some _, none => false

def checkTermOption (T R : ℕ) (p : Option ZInterval) (a b : ℤ)
    (coefficient image centre output : Option ZBox) : Bool :=
  match output, p, coefficient, image, centre with
  | none, _, _, _, _ => true
  | some out, some d, some coeff, some img, some ctr => checkTerm T R d a b coeff img ctr out
  | _, _, _, _, _ => false

theorem checkImageOption_sound {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : Option ZInterval} {image : Option ZBox}
    (hc : checkImageOption T R p image = true) {t : ℝ}
    (ht : Mem (intervalValue p) ((T : ℝ) * t))
    (hi : image.isSome = true) :
    MemBox (boxValue image) ((R : ℂ) * circlePoint t) := by
  cases p <;> cases image <;>
    simp_all only [checkImageOption, intervalValue, boxValue, Option.getD_some,
      Option.isSome_some, Option.isSome_none, Bool.false_eq_true]
  exact checkImage_sound hT hR hc ht

theorem checkTermOption_sound {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    {p : Option ZInterval} {a b : ℤ} {coefficient image centre output : Option ZBox}
    (hi : checkImageOption T R p image = true)
    (hc : checkTermOption T R p a b coefficient image centre output = true)
    {t : ℝ} (ht : Mem (intervalValue p) ((T : ℝ) * t))
    {c : ℂ} (hcoeff : MemBox (boxValue coefficient) ((R : ℂ) * c))
    (ho : output.isSome = true) :
    MemBox (boxValue output) ((R : ℂ) * (c * circlePoint t)) := by
  cases p <;> cases coefficient <;> cases image <;> cases centre <;> cases output <;>
    simp_all only [checkTermOption, checkImageOption, intervalValue, boxValue,
      Option.getD_some, Option.isSome_some, Option.isSome_none, Bool.false_eq_true]
  exact checkTerm_sound hT hR hi hc ht hcoeff

def tables (parameters : ℕ → Option ZInterval) (images : ℕ → Option ZBox)
    (terms : ℕ → ℕ → Option ZBox) (coefficientIndex : Fin 6 → Fin 6 → ℕ)
    (carrier : ZCarrier) : Tables where
  parameter := parameters
  image := images
  term := fun j k h => terms (coefficientIndex j.succ k) h
  row0 := fun k => boxConj (carrier 0 k)

theorem imageSound_of_checks {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    (parameters : ℕ → Option ZInterval) (images : ℕ → Option ZBox)
    (terms : ℕ → ℕ → Option ZBox) (coefficientIndex : Fin 6 → Fin 6 → ℕ)
    (carrier : ZCarrier)
    (hc : ∀ h, checkImageOption T R (parameters h) (images h) = true) :
    ImageSound (tables parameters images terms coefficientIndex carrier) T R := by
  intro h t ht hi
  exact checkImageOption_sound hT hR (hc h) ht.2.2 hi

theorem termSound_of_checks {T R : ℕ} (hT : 0 < T) (hR : 0 < R)
    (parameters : ℕ → Option ZInterval) (images : ℕ → Option ZBox)
    (coefficients : ℕ → Option ZBox) (a b : ℕ → ℤ)
    (centres terms : ℕ → ℕ → Option ZBox)
    (coefficientIndex : Fin 6 → Fin 6 → ℕ) (carrier : ZCarrier)
    (hbind : ∀ r k, coefficients (coefficientIndex r k) = some (boxConj (carrier r k)))
    (hi : ∀ h, checkImageOption T R (parameters h) (images h) = true)
    (hc : ∀ c h, checkTermOption T R (parameters h) (a c) (b c)
      (coefficients c) (images h) (centres c h) (terms c h) = true) :
    TermSound (tables parameters images terms coefficientIndex carrier) (toCarrier R carrier) T R := by
  constructor
  · intro H hH k
    have hm := mem_boxConj ((mem_toRectangle_iff hR _ _).1 (hH 0 k))
    simpa only [tables, map_mul, Complex.star_def, map_natCast] using hm
  · intro H hH j k h t ht ho
    have hm := mem_boxConj ((mem_toRectangle_iff hR _ _).1 (hH j.succ k))
    have hcoeff : MemBox (boxValue (coefficients (coefficientIndex j.succ k)))
        ((R : ℂ) * star (H j.succ k)) := by
      rw [hbind]
      simpa only [boxValue, Option.getD_some, map_mul, Complex.star_def, map_natCast] using hm
    exact checkTermOption_sound hT hR (hi h) (hc (coefficientIndex j.succ k) h)
      ht.2.2 hcoeff ho

theorem image_checks_of_bounded {T R n : ℕ}
    (parameters : ℕ → Option ZInterval) (images : ℕ → Option ZBox)
    (hc : ∀ h : Fin n, checkImageOption T R (parameters h) (images h) = true)
    (hout : ∀ h, n ≤ h → images h = none) :
    ∀ h, checkImageOption T R (parameters h) (images h) = true := by
  intro h
  by_cases hh : h < n
  · exact hc ⟨h, hh⟩
  · simp only [hout h (Nat.le_of_not_gt hh), checkImageOption]

theorem term_checks_of_bounded {T R n m : ℕ}
    (parameters : ℕ → Option ZInterval) (images : ℕ → Option ZBox)
    (coefficients : ℕ → Option ZBox) (a b : ℕ → ℤ)
    (centres terms : ℕ → ℕ → Option ZBox)
    (hc : ∀ c : Fin m, ∀ h : Fin n,
      checkTermOption T R (parameters h) (a c) (b c)
        (coefficients c) (images h) (centres c h) (terms c h) = true)
    (houtc : ∀ c h, m ≤ c → terms c h = none)
    (houth : ∀ c h, n ≤ h → terms c h = none) :
    ∀ c h, checkTermOption T R (parameters h) (a c) (b c)
      (coefficients c) (images h) (centres c h) (terms c h) = true := by
  intro c h
  by_cases hcc : c < m
  · by_cases hhh : h < n
    · exact hc ⟨c, hcc⟩ ⟨h, hhh⟩
    · simp only [houth c h (Nat.le_of_not_gt hhh), checkTermOption]
  · simp only [houtc c h (Nat.le_of_not_gt hcc), checkTermOption]

#print axioms checkImageOption_sound
#print axioms checkTermOption_sound
#print axioms imageSound_of_checks
#print axioms termSound_of_checks
#print axioms image_checks_of_bounded
#print axioms term_checks_of_bounded
end Mub6.Numerical.CircleArc
