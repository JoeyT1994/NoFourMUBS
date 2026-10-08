import RationalCircleCharts
import IntegerPartition
import PhysicalGraph

/-! Cached rational-circle table partition. Arc enclosure is deliberately an
explicit table-soundness premise; this module verifies its physical use and
the complete closed parameter subdivision, including every sign chart. -/
namespace Mub6.Numerical.CircleCharts.Partition
open Mub6 IntegerIntervals GraphKernel
open scoped BigOperators

structure Tables where
  parameter : ℕ → Option ZInterval
  image : ℕ → Option ZBox
  term : Fin 5 → Fin 6 → ℕ → Option ZBox
  row0 : Fin 6 → ZBox

abbrev State := Fin 5 → ℕ
def rootState : State := fun _ => 1
def leftState (state : State) (j : Fin 5) : State :=
  Function.update state j (2 * state j)
def rightState (state : State) (j : Fin 5) : State :=
  Function.update state j (2 * state j + 1)

def intervalValue (q : Option ZInterval) : ZInterval := q.getD ⟨0, 0⟩
def boxValue (q : Option ZBox) : ZBox := q.getD (boxPoint 0 0)

def ParameterMem (tab : Tables) (T h : ℕ) (t : ℝ) : Prop :=
  0 < h ∧ (tab.parameter h).isSome = true ∧
    Mem (intervalValue (tab.parameter h)) ((T : ℝ) * t)

def StateMem (tab : Tables) (T : ℕ) (state : State) (t : Parameters) : Prop :=
  ∀ j, ParameterMem tab T (state j) (t j)

def stateDefined (tab : Tables) (state : State) : Bool :=
  decide (∀ j, 0 < state j ∧ (tab.parameter (state j)).isSome = true)

def rootCheck (tab : Tables) (T : ℕ) : Bool :=
  match tab.parameter 1 with
  | none => false
  | some q => decide (q.lo ≤ -(T : ℤ) ∧ (T : ℤ) ≤ q.hi)

/-- The two child intervals use the same closed cut. All three heap entries
must exist; a cut outside the parent fails. -/
def splitCheck (tab : Tables) (h : ℕ) : Bool :=
  match tab.parameter h, tab.parameter (2*h), tab.parameter (2*h+1) with
  | some p, some l, some r => decide
      (0 < h ∧ l.lo = p.lo ∧ r.hi = p.hi ∧ l.hi = r.lo ∧
        p.lo ≤ l.hi ∧ l.hi ≤ p.hi)
  | _, _, _ => false

/-- First pending table obligation: an image enclosure at the common output
scale R for each parameter interval at scale T. -/
def ImageSound (tab : Tables) (T R : ℕ) : Prop :=
  ∀ h t, ParameterMem tab T h t → (tab.image h).isSome = true →
    MemBox (boxValue (tab.image h)) ((R : ℂ) * circlePoint t)

/-- Second pending table obligation: the row-zero enclosures and every cached
carrier term are uniform over the literal physical carrier region E. -/
def TermSound (tab : Tables) (E : CarrierRegion) (T R : ℕ) : Prop :=
  (∀ H, CarrierBox E H → ∀ k,
    MemBox (tab.row0 k) ((R : ℂ) * star (H 0 k))) ∧
  (∀ H, CarrierBox E H → ∀ j k h t,
    ParameterMem tab T h t → (tab.term j k h).isSome = true →
    MemBox (boxValue (tab.term j k h))
      ((R : ℂ) * (star (H j.succ k) * circlePoint t)))

def signedBox (negative : Bool) (q : ZBox) : ZBox :=
  if negative then boxNeg q else q

def imageBoxes (tab : Tables) (signs : SignChart) (state : State) : ZRayBox :=
  fun j => signedBox (signs j) (boxValue (tab.image (state j)))

def cachedAmplitude (tab : Tables) (signs : SignChart) (state : State) (k : Fin 6) : ZBox :=
  boxAdd (tab.row0 k) (boxSum
    (fun j => signedBox (signs j) (boxValue (tab.term j k (state j)))))

def imageDefined (tab : Tables) (state : State) : Bool :=
  decide (∀ j, (tab.image (state j)).isSome = true)
def termsDefined (tab : Tables) (state : State) (k : Fin 6) : Bool :=
  decide (∀ j, (tab.term j k (state j)).isSome = true)

inductive Tree (n : ℕ) where
  | keep (v : Fin n)
  | reject (k : Fin 6)
  | split (j : Fin 5) (left right : Tree n)
  | unknown
  deriving Repr

def checkTree {n : ℕ} (tab : Tables) (R : ℕ) (targets : Fin n → ZRayBox)
    (signs : SignChart) : State → Tree n → Bool
  | state, .keep v => stateDefined tab state && imageDefined tab state &&
      boxSubset (imageBoxes tab signs state) (targets v)
  | state, .reject k => stateDefined tab state && termsDefined tab state k &&
      excludes (boxNormSq (cachedAmplitude tab signs state k)) (6 * (R : ℤ)^2)
  | state, .split j left right => stateDefined tab state && splitCheck tab (state j) &&
      checkTree tab R targets signs (leftState state j) left &&
      checkTree tab R targets signs (rightState state j) right
  | _, .unknown => false

theorem rootCheck_sound {tab : Tables} {T : ℕ} (hc : rootCheck tab T = true)
    {t : Parameters} (ht : ∀ j, -1 ≤ t j ∧ t j ≤ 1) : StateMem tab T rootState t := by
  cases hp : tab.parameter 1 with
  | none => simp [rootCheck, hp] at hc
  | some p =>
    have hb : p.lo ≤ -(T : ℤ) ∧ (T : ℤ) ≤ p.hi := by
      simpa [rootCheck, hp] using hc
    intro j
    refine ⟨by decide, by simp [rootState, hp], ?_⟩
    change Mem (intervalValue (tab.parameter 1)) ((T : ℝ) * t j)
    simp only [hp, intervalValue, Option.getD_some, Mem]
    have hlo : (p.lo : ℝ) ≤ -(T : ℝ) := by exact_mod_cast hb.1
    have hhi : (T : ℝ) ≤ p.hi := by exact_mod_cast hb.2
    constructor
    · exact hlo.trans (by nlinarith [mul_nonneg (Nat.cast_nonneg T) (show 0 ≤ t j + 1 by linarith [(ht j).1])])
    · exact (show (T : ℝ) * t j ≤ T by
        nlinarith [mul_nonneg (Nat.cast_nonneg T) (show 0 ≤ 1 - t j by linarith [(ht j).2])]).trans hhi

theorem parameter_split_cover {tab : Tables} {T h : ℕ} {t : ℝ}
    (hc : splitCheck tab h = true) (ht : ParameterMem tab T h t) :
    ParameterMem tab T (2*h) t ∨ ParameterMem tab T (2*h+1) t := by
  cases hp : tab.parameter h with
  | none => simp [splitCheck, hp] at hc
  | some p =>
    cases hl : tab.parameter (2*h) with
    | none => simp [splitCheck, hp, hl] at hc
    | some l =>
      cases hr : tab.parameter (2*h+1) with
      | none => simp [splitCheck, hp, hl, hr] at hc
      | some r =>
        have hb : 0 < h ∧ l.lo = p.lo ∧ r.hi = p.hi ∧ l.hi = r.lo ∧
            p.lo ≤ l.hi ∧ l.hi ≤ p.hi := by simpa [splitCheck, hp, hl, hr] using hc
        have hm : (p.lo : ℝ) ≤ (T : ℝ)*t ∧ (T : ℝ)*t ≤ p.hi := by
          simpa [intervalValue, hp, Mem] using ht.2.2
        by_cases hcut : (T : ℝ)*t ≤ l.hi
        · left
          refine ⟨by omega, by simp [hl], ?_⟩
          simpa [intervalValue, hl, Mem, hb.2.1] using And.intro hm.1 hcut
        · right
          refine ⟨by omega, by simp [hr], ?_⟩
          have low : (r.lo : ℝ) ≤ (T : ℝ)*t := by
            rw [← hb.2.2.2.1]
            exact le_of_lt (lt_of_not_ge hcut)
          simpa [intervalValue, hr, Mem, hb.2.2.1] using And.intro low hm.2

theorem state_split_cover {tab : Tables} {T : ℕ} {state : State} {t : Parameters}
    (j : Fin 5) (hc : splitCheck tab (state j) = true) (ht : StateMem tab T state t) :
    StateMem tab T (leftState state j) t ∨ StateMem tab T (rightState state j) t := by
  rcases parameter_split_cover hc (ht j) with hl | hr
  · left; intro i
    by_cases hi : i = j
    · subst i; simpa [leftState] using hl
    · simpa [leftState, Function.update_of_ne hi] using ht i
  · right; intro i
    by_cases hi : i = j
    · subst i; simpa [rightState] using hr
    · simpa [rightState, Function.update_of_ne hi] using ht i

theorem signedBox_sound {q : ZBox} {z : ℂ} (hz : MemBox q z) (negative : Bool) :
    MemBox (signedBox negative q) ((signValue negative : ℂ) * z) := by
  cases negative
  · simpa [signedBox, signValue] using hz
  · simpa [signedBox, signValue] using mem_boxNeg hz

theorem imageBoxes_sound {tab : Tables} {T R : ℕ} (hs : ImageSound tab T R)
    {state : State} {signs : SignChart} {t : Parameters}
    (hd : imageDefined tab state = true) (ht : StateMem tab T state t) :
    MemRayBox R (imageBoxes tab signs state) (chartRay signs t) := by
  refine ⟨rfl, ?_⟩
  have hd' : ∀ j, (tab.image (state j)).isSome = true := of_decide_eq_true hd
  intro j
  have h := signedBox_sound (hs (state j) (t j) (ht j) (hd' j)) (signs j)
  simpa [imageBoxes, chartRay, signedCircle, mul_left_comm, mul_assoc] using h

theorem cachedAmplitude_sound {tab : Tables} {E : CarrierRegion} {T R : ℕ}
    (hs : TermSound tab E T R) {H : BasisMatrix} (hH : CarrierBox E H)
    {state : State} {signs : SignChart} {t : Parameters}
    (k : Fin 6) (hd : termsDefined tab state k = true) (ht : StateMem tab T state t) :
    MemBox (cachedAmplitude tab signs state k)
      ((R : ℂ) * carrierAmplitude H (chartRay signs t) k) := by
  have hd' : ∀ j, (tab.term j k (state j)).isSome = true := of_decide_eq_true hd
  have hm := mem_boxSum
    (fun j => signedBox (signs j) (boxValue (tab.term j k (state j))))
    (fun j => (R : ℂ) * (star (H j.succ k) * signedCircle (signs j) (t j)))
    (fun j => by
      have h := signedBox_sound (hs.2 H hH j k (state j) (t j) (ht j) (hd' j)) (signs j)
      simpa [signedCircle, mul_left_comm, mul_comm, mul_assoc] using h)
  have hh := mem_boxAdd (hs.1 H hH k) hm
  have he : (R : ℂ) * star (H 0 k) +
      ∑ j : Fin 5, (R : ℂ) * (star (H j.succ k) * signedCircle (signs j) (t j)) =
      (R : ℂ) * carrierAmplitude H (chartRay signs t) k := by
    simp only [carrierAmplitude, Fin.sum_univ_succ, chartRay, Fin.cases_zero,
      Fin.cases_succ, mul_one, mul_add, Finset.mul_sum]
  exact he ▸ hh

theorem checkTree_sound {n T R : ℕ} (tab : Tables) (E : CarrierRegion)
    (targets : Fin n → ZRayBox) (hsImage : ImageSound tab T R)
    (hsTerm : TermSound tab E T R) (tree : Tree n) (signs : SignChart)
    {H : BasisMatrix} (hH : CarrierBox E H) {t : Parameters}
    (hcommon : IsRawCommonRay H (chartRay signs t)) :
    ∀ state, checkTree tab R targets signs state tree = true → StateMem tab T state t →
      ∃ v, MemRayBox R (targets v) (chartRay signs t) := by
  induction tree with
  | keep v =>
    intro state hc ht
    have hh : (stateDefined tab state = true ∧ imageDefined tab state = true) ∧
        boxSubset (imageBoxes tab signs state) (targets v) = true := by
      simpa only [checkTree, Bool.and_eq_true] using hc
    exact ⟨v, boxSubset_sound hh.2 (imageBoxes_sound hsImage hh.1.2 ht)⟩
  | reject k =>
    intro state hc ht
    have hh : (stateDefined tab state = true ∧ termsDefined tab state k = true) ∧
        excludes (boxNormSq (cachedAmplitude tab signs state k)) (6*(R : ℤ)^2) = true := by
      simpa only [checkTree, Bool.and_eq_true] using hc
    apply False.elim
    apply excludes_sound hh.2 (mem_boxNormSq (cachedAmplitude_sound hsTerm hH k hh.1.2 ht))
    rw [normSq_scaled, hcommon.2 k]
    push_cast
    ring
  | split j left right ihLeft ihRight =>
    intro state hc ht
    have hh : ((stateDefined tab state = true ∧ splitCheck tab (state j) = true) ∧
        checkTree tab R targets signs (leftState state j) left = true) ∧
        checkTree tab R targets signs (rightState state j) right = true := by
      simpa only [checkTree, Bool.and_eq_true] using hc
    rcases state_split_cover j hh.1.1.2 ht with hl | hr
    · exact ihLeft _ hh.1.2 hl
    · exact ihRight _ hh.2 hr
  | unknown => intro state hc; simp [checkTree] at hc

def checkAllCharts {n : ℕ} (tab : Tables) (T R : ℕ) (targets : Fin n → ZRayBox)
    (trees : SignChart → Tree n) : Bool :=
  decide (0 < T ∧ 0 < R) && rootCheck tab T &&
    decide (∀ signs, checkTree tab R targets signs rootState (trees signs) = true)

theorem checkAllCharts_sound {n T R : ℕ} {tab : Tables} {E : CarrierRegion}
    {targets : Fin n → ZRayBox} {trees : SignChart → Tree n}
    (hsImage : ImageSound tab T R) (hsTerm : TermSound tab E T R)
    (hc : checkAllCharts tab T R targets trees = true) :
    CompleteUniformRayCover E (fun v => toRawRayBox R (targets v)) := by
  have hh : ((0 < T ∧ 0 < R) ∧ rootCheck tab T = true) ∧
      (∀ signs, checkTree tab R targets signs rootState (trees signs) = true) := by
    simpa only [checkAllCharts, Bool.and_eq_true, decide_eq_true_eq] using hc
  intro H _hphysical hH z hz
  rcases (raw_ray_chart_iff z).1 hz.1 with ⟨signs, t, ht, he⟩
  have hcommon : IsRawCommonRay H (chartRay signs t) := he ▸ hz
  obtain ⟨v, hv⟩ := checkTree_sound tab E targets hsImage hsTerm (trees signs) signs hH
    hcommon rootState (hh.2 signs) (rootCheck_sound hh.1.2 ht)
  refine ⟨v, ?_⟩
  rw [he]
  exact (mem_toRawRayBox_iff hh.1.1.2 _ _).2 hv

#print axioms rootCheck_sound
#print axioms parameter_split_cover
#print axioms state_split_cover
#print axioms imageBoxes_sound
#print axioms cachedAmplitude_sound
#print axioms checkTree_sound
#print axioms checkAllCharts_sound
end Mub6.Numerical.CircleCharts.Partition
