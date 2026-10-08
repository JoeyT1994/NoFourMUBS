import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/- Conditional scalar and logical rules only. These theorems do not instantiate
   physical Hadamard completions, native intervals, Taylor remainder bounds,
   numerical receipts, actual box covers, or concrete finite symmetry maps. -/
set_option autoImplicit false
namespace SurvivorV2Rules

def Excludes {α : Type*} (physical region : α → Prop) : Prop :=
  ∀ x, region x → ¬ physical x

theorem exclusion_inheritance {α : Type*} {physical small large : α → Prop}
    (hcontain : ∀ x, small x → large x) (hlarge : Excludes physical large) :
    Excludes physical small := by
  intro x hx
  exact hlarge x (hcontain x hx)

theorem exclusion_union {α : Type*} {physical left right : α → Prop}
    (hl : Excludes physical left) (hr : Excludes physical right) :
    Excludes physical (fun x => left x ∨ right x) := by
  intro x hx
  rcases hx with hx | hx
  · exact hl x hx
  · exact hr x hx

theorem finite_branch_pool {α : Type*} {n m : ℕ}
    {physical region : α → Prop} {branch : Fin n → α → Prop}
    {dead : Fin m → Fin n → Prop}
    (hphysical : ∀ x, region x → physical x → ∃ b, branch b x)
    (hreceipts : ∀ k b, dead k b → ∀ x, region x → ¬ branch b x)
    (hpool : ∀ b, ∃ k, dead k b) : Excludes physical region := by
  intro x hx hp
  obtain ⟨b, hb⟩ := hphysical x hx hp
  obtain ⟨k, hk⟩ := hpool b
  exact hreceipts k b hk x hx hb

theorem inherited_branch_pool {α : Type*} {n m : ℕ}
    {physical small large : α → Prop} {branch : Fin n → α → Prop}
    {dead : Fin m → Fin n → Prop}
    (hcontain : ∀ x, small x → large x)
    (hphysical : ∀ x, small x → physical x → ∃ b, branch b x)
    (hreceipts : ∀ k b, dead k b → ∀ x, large x → ¬ branch b x)
    (hpool : ∀ b, ∃ k, dead k b) : Excludes physical small := by
  apply finite_branch_pool hphysical (hpool := hpool)
  intro k b hkb x hx
  exact hreceipts k b hkb x (hcontain x hx)

theorem containing_certified_region {α : Type*}
    {physical requested certified : α → Prop}
    (hcontain : ∀ x, requested x → certified x)
    (hcertified : Excludes physical certified) : Excludes physical requested := by
  exact exclusion_inheritance hcontain hcertified

theorem conditional_transport {α : Type*}
    {physical source target : α → Prop} (transport : α → α)
    (hregion : ∀ x, source x → target (transport x))
    (hphysical : ∀ x, source x → physical x → physical (transport x))
    (hexclude : Excludes physical target) : Excludes physical source := by
  intro x hx hp
  exact hexclude (transport x) (hregion x hx) (hphysical x hx hp)

theorem finite_symmetry_transport {α : Type*} {n : ℕ}
    {physical source : α → Prop} (target : Fin n → α → Prop)
    (transport : Fin n → α → α)
    (hcover : ∀ x, source x → ∃ k, target k (transport k x))
    (hphysical : ∀ k x, source x → physical x → physical (transport k x))
    (hexclude : ∀ k, Excludes physical (target k)) : Excludes physical source := by
  intro x hx hp
  obtain ⟨k, hk⟩ := hcover x hx
  exact hexclude k (transport k x) hk (hphysical k x hx hp)

theorem finite_cover_exclusion {α : Type*} {n : ℕ}
    {physical root : α → Prop} (leaf : Fin n → α → Prop)
    (hcover : ∀ x, root x → ∃ k, leaf k x)
    (hexclude : ∀ k, Excludes physical (leaf k)) : Excludes physical root := by
  intro x hx hp
  obtain ⟨k, hk⟩ := hcover x hx
  exact hexclude k x hk hp

theorem whole_root_cover_supersession {α : Type*} {n : ℕ}
    {physical root : α → Prop} (oldLeaf : Fin n → α → Prop)
    (hexact : ∀ x, root x ↔ ∃ k, oldLeaf k x)
    (hroot : Excludes physical root) :
    (∀ k, Excludes physical (oldLeaf k)) ∧
      Excludes physical (fun x => ∃ k, oldLeaf k x) := by
  constructor
  · intro k x hx
    exact hroot x ((hexact x).mpr ⟨k, hx⟩)
  · intro x hx
    exact hroot x ((hexact x).mpr hx)

def radicand (p j w : ℝ) : ℝ :=
  4*(27-3*p+j)^2*(9-p+j) - (w-(p-9)*(p-18)+(p-15)*j)^2

def complementBracket (p j w : ℝ) : ℝ :=
  4*j^2+2*p^3-24*p^2+54*p+(30-2*p)*w

theorem complement_difference (p j w : ℝ) :
    radicand p j w-radicand p (-j) w = 2*j*complementBracket p j w := by
  unfold radicand complementBracket
  ring

theorem complement_bracket_ge_square {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w) :
    4*j^2 ≤ complementBracket p j w := by
  have hc : 0 ≤ p^3 := pow_nonneg hp 3
  have hl : 0 ≤ p*(54-24*p) := mul_nonneg hp (by linarith)
  have hr : 0 ≤ (30-2*p)*w := mul_nonneg (by linarith) hw
  unfold complementBracket
  nlinarith

theorem complement_j_nonnegative {p j w : ℝ}
    (hp : 0 ≤ p) (hp1 : p < 1) (hw : 0 ≤ w)
    (hmax : radicand p (-j) w ≤ radicand p j w) : 0 ≤ j := by
  by_contra hn
  have hj : j < 0 := lt_of_not_ge hn
  have hbs := complement_bracket_ge_square (j := j) hp hp1 hw
  have hsq : 0 < j*j := mul_pos_of_neg_of_neg hj hj
  have hb : 0 < complementBracket p j w := by nlinarith
  have hneg : 2*j*complementBracket p j w < 0 :=
    mul_neg_of_neg_of_pos (by linarith) hb
  rw [← complement_difference] at hneg
  linarith

theorem complement_standalone_obstruction {p j w : ℝ}
    (hgap : radicand p j w-radicand p (-j) w < 0)
    (hmax : radicand p (-j) w ≤ radicand p j w) : False := by
  linarith

/- This bound has no seed-radius premise. A concrete physical use must supply
   maximality/complement binding and the per-box p,W,J enclosures. -/
theorem complement_per_box_guard {α : Type*} {physical region : α → Prop}
    (p j w : α → ℝ)
    (hp : ∀ x, region x → 0 ≤ p x)
    (hp1 : ∀ x, region x → p x < 1)
    (hw : ∀ x, region x → 0 ≤ w x)
    (hj : ∀ x, region x → j x < 0)
    (hmax : ∀ x, region x → physical x →
      radicand (p x) (-(j x)) (w x) ≤ radicand (p x) (j x) (w x)) :
    Excludes physical region := by
  intro x hx hphysical
  have hnonneg := complement_j_nonnegative (hp x hx) (hp1 x hx) (hw x hx)
    (hmax x hx hphysical)
  exact (not_lt_of_ge hnonneg) (hj x hx)

theorem joint_constraint_lower_bound {f lower j j0 r r0 lambda mu : ℝ}
    (hlambda : 0 ≤ lambda) (hmu : 0 ≤ mu)
    (hj : j0 ≤ j) (hr : r0 ≤ r)
    (hbound : lower ≤ f-lambda*(j-j0)-mu*(r-r0)) : lower ≤ f := by
  have hjterm : 0 ≤ lambda*(j-j0) := mul_nonneg hlambda (sub_nonneg.mpr hj)
  have hrterm : 0 ≤ mu*(r-r0) := mul_nonneg hmu (sub_nonneg.mpr hr)
  linarith

theorem monotonic_face_upper {α : Type*} [Preorder α] {f : α → ℝ}
    {x upper : α} (hf : Monotone f) (hx : x ≤ upper) (hupper : f upper < 0) :
    f x < 0 := by
  exact lt_of_le_of_lt (hf hx) hupper

theorem antitonic_face_upper {α : Type*} [Preorder α] {f : α → ℝ}
    {lower x : α} (hf : Antitone f) (hx : lower ≤ x) (hlower : f lower < 0) :
    f x < 0 := by
  exact lt_of_le_of_lt (hf hx) hlower

theorem certified_face_obstruction {α : Type*} {physical region : α → Prop}
    (f : α → ℝ) (face : α → α)
    (hface : ∀ x, region x → f x ≤ f (face x))
    (hbound : ∀ x, region x → f (face x) < 0)
    (hnecessary : ∀ x, physical x → 0 ≤ f x) : Excludes physical region := by
  intro x hx hp
  exact (not_lt_of_ge (hnecessary x hp)) (lt_of_le_of_lt (hface x hx) (hbound x hx))

def qform3 (a b c d e f x y z : ℝ) : ℝ :=
  a*x^2+b*y^2+c*z^2+2*d*x*y+2*e*x*z+2*f*y*z

def PSD3 (a b c d e f : ℝ) : Prop := ∀ x y z, 0 ≤ qform3 a b c d e f x y z

theorem rational_quadratic_obstruction {a b c d e f : ℝ} (x y z : ℚ)
    (hnegative : qform3 a b c d e f (x : ℝ) (y : ℝ) (z : ℝ) < 0) :
    ¬ PSD3 a b c d e f := by
  intro hpsd
  exact (not_lt_of_ge (hpsd (x : ℝ) (y : ℝ) (z : ℝ))) hnegative

theorem qform_radical_affine (a b c d e f a' b' c' d' e' f' q x y z : ℝ) :
    qform3 (a+a'*q) (b+b'*q) (c+c'*q) (d+d'*q) (e+e'*q) (f+f'*q) x y z =
      qform3 a b c d e f x y z+q*qform3 a' b' c' d' e' f' x y z := by
  unfold qform3
  ring

theorem secant_add (rho a da b db : ℝ) :
    (a+rho*da)+(b+rho*db) = (a+b)+rho*(da+db) := by ring

theorem secant_mul (rho a da b db : ℝ) :
    (a+rho*da)*(b+rho*db) = a*b+rho*(a*db+da*b+rho*da*db) := by ring

theorem secant_norm2 (rho a da b db : ℝ) :
    (a+rho*da)^2+(b+rho*db)^2 =
      a^2+b^2+rho*(2*(a*da+b*db)+rho*(da^2+db^2)) := by ring

theorem unit_displacement_relation {rho a b x y : ℝ}
    (hrho : rho ≠ 0) (hanchor : a^2+b^2=1)
    (hphase : (a+rho*x)^2+(b+rho*y)^2=1) :
    2*(a*x+b*y)+rho*(x^2+y^2)=0 := by
  have hproduct : rho*(2*(a*x+b*y)+rho*(x^2+y^2))=0 := by
    nlinarith only [hanchor,hphase]
  exact (mul_eq_zero.mp hproduct).resolve_left hrho

theorem tangent_triangle (sr si tr ti : ℝ) :
    let x := sr^2+si^2
    let y := tr^2+ti^2
    let z := (sr+tr)^2+(si-ti)^2
    2*(x*y+x*z+y*z)-x^2-y^2-z^2 = 4*(sr*ti+si*tr)^2 := by
  dsimp
  ring

theorem leading_mean_relation (l im x y z : ℝ) :
    -54*l*im*((x+y-z)*z+(x+z-y)*y+(y+z-x)*x) =
      -18*im*(-3*l*(z*(z-x-y)+y*(y-x-z)+x*(x-y-z))) := by ring

theorem leading_beta_closed (x y z im : ℝ)
    (htriangle : 2*(x*y+x*z+y*z)-x^2-y^2-z^2=4*im^2) :
    -3*((243:ℝ)/2*x*y*z)*(z*(z-x-y)+y*(y-x-z)+x*(x-y-z)) =
      1458*x*y*z*im^2 := by
  have hid : z*(z-x-y)+y*(y-x-z)+x*(x-y-z) = -(4*im^2) := by
    nlinarith only [htriangle]
  rw [hid]
  ring

theorem terminal_secant_rewrite (rho im b0 da db : ℝ) :
    -18*im*b0+rho*da = -18*im*(b0+rho*db)+rho*(da+18*im*db) := by ring

theorem cancellation_H (rho im b d rdef : ℝ) :
    (-18*im*b+rho*d)^2-b^2*(324*im^2+rho*rdef) =
      rho*(rho*d^2-36*im*b*d-b^2*rdef) := by ring

theorem cancellation_Hminus (rho im b d rdef delta : ℝ) :
    (-18*im*b+rho*d)^2-(b-3*rho^2*delta)^2*(324*im^2+rho*rdef) =
      rho*(rho*d^2-36*im*b*d-b^2*rdef+
        rho*(6*b*delta-9*rho^2*delta^2)*(324*im^2+rho*rdef)) := by ring

theorem cancellation_Hplus (rho im b d rdef delta : ℝ) :
    (-18*im*b+rho*d)^2-(b+3*rho^2*delta)^2*(324*im^2+rho*rdef) =
      rho*(rho*d^2-36*im*b*d-b^2*rdef-
        rho*(6*b*delta+9*rho^2*delta^2)*(324*im^2+rho*rdef)) := by ring

theorem positive_factor_preserves_positive {rho h : ℝ} (hrho : 0 < rho) :
    0 < rho*h ↔ 0 < h := by
  constructor
  · intro hprod
    by_contra hn
    have hh : h ≤ 0 := le_of_not_gt hn
    have hnonpos := mul_nonpos_of_nonneg_of_nonpos (le_of_lt hrho) hh
    linarith
  · intro hh
    exact mul_pos hrho hh

theorem positive_factor_preserves_negative {rho h : ℝ} (hrho : 0 < rho) :
    rho*h < 0 ↔ h < 0 := by
  constructor
  · intro hprod
    by_contra hn
    have hh : 0 ≤ h := le_of_not_gt hn
    have hnonneg := mul_nonneg (le_of_lt hrho) hh
    linarith
  · intro hh
    exact mul_neg_of_pos_of_neg hrho hh

#print axioms exclusion_inheritance
#print axioms exclusion_union
#print axioms finite_branch_pool
#print axioms inherited_branch_pool
#print axioms containing_certified_region
#print axioms conditional_transport
#print axioms finite_symmetry_transport
#print axioms finite_cover_exclusion
#print axioms whole_root_cover_supersession
#print axioms complement_difference
#print axioms complement_bracket_ge_square
#print axioms complement_j_nonnegative
#print axioms complement_standalone_obstruction
#print axioms complement_per_box_guard
#print axioms joint_constraint_lower_bound
#print axioms monotonic_face_upper
#print axioms antitonic_face_upper
#print axioms certified_face_obstruction
#print axioms rational_quadratic_obstruction
#print axioms qform_radical_affine
#print axioms secant_add
#print axioms secant_mul
#print axioms secant_norm2
#print axioms unit_displacement_relation
#print axioms tangent_triangle
#print axioms leading_mean_relation
#print axioms leading_beta_closed
#print axioms terminal_secant_rewrite
#print axioms cancellation_H
#print axioms cancellation_Hminus
#print axioms cancellation_Hplus
#print axioms positive_factor_preserves_positive
#print axioms positive_factor_preserves_negative

end SurvivorV2Rules
