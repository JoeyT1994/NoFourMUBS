import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/- Supplier equal-angle cells, expressed in turns. The actual angle is
2*pi*theta. This is the same n,v grid, not a rational-circle parametrization. -/
set_option autoImplicit false
set_option maxRecDepth 16384

namespace Seed0024ClusterTubeCover20261007

abbrev Turns := Fin 5 → ℝ
abbrev RootIndex := Fin 5 → Fin 19
abbrev Mask := Fin 32

structure Cell where
  level : ℕ
  index : Fin 5 → ℕ

def denominator (s : Cell) : ℕ := 19*2^s.level

def Valid (s : Cell) : Prop := s.level≤7 ∧ ∀i,s.index i<denominator s

instance (s : Cell) : Decidable (Valid s) := by
  unfold Valid
  infer_instance

def validCheck (s : Cell) : Bool := decide (Valid s)

def MemCell (s : Cell) (theta : Turns) : Prop :=
  ∀i,(s.index i : ℝ)≤(denominator s : ℝ)*theta i ∧
    (denominator s : ℝ)*theta i≤(s.index i : ℝ)+1

def UnitCube (theta : Turns) : Prop := ∀i,0≤theta i ∧ theta i≤1

def rootCell (r : RootIndex) : Cell := ⟨0,fun i => (r i).val⟩

def maskBits (m : Mask) (i : Fin 5) : Bool := m.val.testBit i.val

def childCell (s : Cell) (m : Mask) : Cell :=
  ⟨s.level+1,fun i => 2*s.index i+(if maskBits m i then 1 else 0)⟩

theorem root_count : Fintype.card RootIndex=2476099 := by
  norm_num [RootIndex,Fintype.card_pi_const]

theorem maskBits_surjective : Function.Surjective maskBits := by decide

theorem denominator_pos (s : Cell) : 0<denominator s := by
  dsimp [denominator]
  positivity

theorem denominator_child (s : Cell) (m : Mask) :
    denominator (childCell s m)=2*denominator s := by
  simp only [denominator,childCell,pow_succ]
  ring

theorem root_valid (r : RootIndex) : Valid (rootCell r) := by
  constructor
  · norm_num [rootCell]
  · intro i
    simpa only [rootCell,denominator,pow_zero,mul_one] using (r i).isLt

theorem child_valid (s : Cell) (m : Mask) (hs : Valid s) (hlevel : s.level<7) :
    Valid (childCell s m) := by
  constructor
  · change s.level+1≤7
    omega
  · intro i
    rw [denominator_child]
    have hi := hs.2 i
    change 2*s.index i+(if maskBits m i then 1 else 0)<2*denominator s
    cases h : maskBits m i <;> simp only [h,Bool.false_eq_true,if_false,if_true]
    all_goals omega

theorem memCell_iff_interval (s : Cell) (theta : Turns) :
    MemCell s theta ↔ ∀i,
      (s.index i : ℝ)/(denominator s : ℝ)≤theta i ∧
      theta i≤((s.index i : ℝ)+1)/(denominator s : ℝ) := by
  have hn : (0:ℝ)<denominator s := by exact_mod_cast denominator_pos s
  apply forall_congr'
  intro i
  rw [div_le_iff₀ hn,le_div_iff₀ hn]
  simp only [mul_comm]

theorem closed_binary_interval_cover (k x : ℝ) (hx : k≤x ∧ x≤k+1) :
    ∃b : Bool,2*k+(if b then (1:ℝ) else 0)≤2*x ∧
      2*x≤2*k+(if b then (1:ℝ) else 0)+1 := by
  by_cases h : 2*x≤2*k+1
  · refine ⟨false,?_⟩
    simp only [Bool.false_eq_true,if_false,add_zero]
    constructor <;> linarith [hx.1]
  · refine ⟨true,?_⟩
    simp only [if_true]
    constructor <;> linarith [hx.2]

/-- All five coordinate choices are realized by one of the actual masks 0..31. -/
theorem all_children_cover (s : Cell) (theta : Turns) (ht : MemCell s theta) :
    ∃m : Mask,MemCell (childCell s m) theta := by
  classical
  have hb : ∀i : Fin 5,∃b : Bool,
      2*(s.index i : ℝ)+(if b then (1:ℝ) else 0)≤2*((denominator s : ℝ)*theta i) ∧
      2*((denominator s : ℝ)*theta i)≤2*(s.index i : ℝ)+(if b then (1:ℝ) else 0)+1 :=
    fun i => closed_binary_interval_cover _ _ (ht i)
  choose bits hbits using hb
  obtain ⟨m,hm⟩ := maskBits_surjective bits
  refine ⟨m,?_⟩
  intro i
  have h := hbits i
  have hmi : maskBits m i=bits i := congrFun hm i
  change ((childCell s m).index i : ℝ)≤(denominator (childCell s m) : ℝ)*theta i ∧
    (denominator (childCell s m) : ℝ)*theta i≤((childCell s m).index i : ℝ)+1
  rw [denominator_child]
  cases hb : bits i <;>
    simpa [childCell,hmi,hb,Nat.cast_add,Nat.cast_mul,mul_assoc] using h

/-- Closed finite bins include both endpoints; no floor or open-boundary convention. -/
theorem closed_unit_bins (n : ℕ) (x : ℝ) (hx0 : 0≤x) (hxn : x≤(n:ℝ)+1) :
    ∃j : Fin (n+1),(j.val : ℝ)≤x ∧ x≤(j.val : ℝ)+1 := by
  induction n with
  | zero =>
      refine ⟨0,?_⟩
      simpa using And.intro hx0 hxn
  | succ n ih =>
      by_cases hcut : x≤(n:ℝ)+1
      · obtain ⟨j,hj⟩ := ih hcut
        exact ⟨j.castSucc,by simpa using hj⟩
      · refine ⟨Fin.last (n+1),?_,?_⟩
        · simp only [Fin.val_last,Nat.cast_add,Nat.cast_one]
          exact le_of_lt (lt_of_not_ge hcut)
        · simpa only [Fin.val_last,Nat.cast_add,Nat.cast_one] using hxn

theorem all_roots_cover (theta : Turns) (ht : UnitCube theta) :
    ∃r : RootIndex,MemCell (rootCell r) theta := by
  classical
  have hh : ∀i : Fin 5,∃j : Fin 19,
      (j.val : ℝ)≤19*theta i ∧ 19*theta i≤(j.val : ℝ)+1 := by
    intro i
    exact closed_unit_bins 18 (19*theta i) (by nlinarith [(ht i).1])
      (by norm_num; nlinarith [(ht i).2])
  choose r hr using hh
  refine ⟨r,?_⟩
  intro i
  simpa only [rootCell,denominator,pow_zero,mul_one,Nat.cast_ofNat] using hr i

end Seed0024ClusterTubeCover20261007

#print axioms Seed0024ClusterTubeCover20261007.root_count
#print axioms Seed0024ClusterTubeCover20261007.maskBits_surjective
#print axioms Seed0024ClusterTubeCover20261007.denominator_pos
#print axioms Seed0024ClusterTubeCover20261007.denominator_child
#print axioms Seed0024ClusterTubeCover20261007.root_valid
#print axioms Seed0024ClusterTubeCover20261007.child_valid
#print axioms Seed0024ClusterTubeCover20261007.memCell_iff_interval
#print axioms Seed0024ClusterTubeCover20261007.closed_binary_interval_cover
#print axioms Seed0024ClusterTubeCover20261007.all_children_cover
#print axioms Seed0024ClusterTubeCover20261007.closed_unit_bins
#print axioms Seed0024ClusterTubeCover20261007.all_roots_cover
