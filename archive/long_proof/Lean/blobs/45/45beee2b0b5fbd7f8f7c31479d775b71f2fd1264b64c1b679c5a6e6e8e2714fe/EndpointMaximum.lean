import EqualAngleCells

/- Finite endpoint assembly only. The one-coordinate analytic condition is an
explicit hypothesis; no convexity or trigonometric claim is imported here. -/
set_option autoImplicit false
set_option maxRecDepth 16384

namespace Seed0024ClusterTubeCover20261007

def InRectangle (a b x : Turns) : Prop := ∀i,a i≤x i ∧ x i≤b i

def endpoint (a b : Turns) (m : Mask) : Turns :=
  fun i => if maskBits m i then b i else a i

def CoordinateEndpointCondition (f : Turns → ℝ) (a b : Turns) : Prop :=
  ∀x,InRectangle a b x → ∀i,
    f x≤f (Function.update x i (a i)) ∨
      f x≤f (Function.update x i (b i))

theorem rectangle_update (a b x : Turns) (i : Fin 5) (v : ℝ)
    (hx : InRectangle a b x) (hv : a i≤v ∧ v≤b i) :
    InRectangle a b (Function.update x i v) := by
  intro j
  by_cases h : j=i
  · subst j
    simpa only [Function.update_self] using hv
  · simpa only [Function.update_of_ne h] using hx j

theorem rectangle_update_endpoint (a b x : Turns) (i : Fin 5) (bit : Bool)
    (hx : InRectangle a b x) :
    InRectangle a b (Function.update x i (if bit then b i else a i)) := by
  apply rectangle_update a b x i _ hx
  have hab := le_trans (hx i).1 (hx i).2
  cases bit <;> simp [hab]

theorem coordinate_endpoint_step (f : Turns → ℝ) (a b x : Turns)
    (hstep : CoordinateEndpointCondition f a b) (hx : InRectangle a b x)
    (i : Fin 5) :
    ∃bit : Bool,
      InRectangle a b (Function.update x i (if bit then b i else a i)) ∧
      f x≤f (Function.update x i (if bit then b i else a i)) := by
  rcases hstep x hx i with hleft | hright
  · exact ⟨false,rectangle_update_endpoint a b x i false hx,by simpa using hleft⟩
  · exact ⟨true,rectangle_update_endpoint a b x i true hx,by simpa using hright⟩

/-- Replacing any finite set of coordinates can only increase the selected value. -/
theorem partial_endpoint_bound (f : Turns → ℝ) (a b : Turns)
    (hstep : CoordinateEndpointCondition f a b) (s : Finset (Fin 5))
    (x : Turns) (hx : InRectangle a b x) :
    ∃y : Turns,InRectangle a b y ∧ f x≤f y ∧
      ∀i ∈ s,y i=a i ∨ y i=b i := by
  induction s using Finset.induction_on generalizing x with
  | empty =>
      exact ⟨x,hx,le_rfl,by simp⟩
  | @insert i s his ih =>
      obtain ⟨y,hy,hxy,hends⟩ := ih x hx
      obtain ⟨bit,hbox,hf⟩ := coordinate_endpoint_step f a b y hstep hy i
      refine ⟨Function.update y i (if bit then b i else a i),hbox,
        le_trans hxy hf,?_⟩
      intro j hj
      rcases Finset.mem_insert.mp hj with hji | hjs
      · subst j
        simp only [Function.update_self]
        cases bit <;> simp
      · have hji : j≠i := by
          intro heq
          subst j
          exact his hjs
        simpa only [Function.update_of_ne hji] using hends j hjs

/-- All five endpoint choices use the same actual bitmasks as the supplier split. -/
theorem endpoint_maximum (f : Turns → ℝ) (a b x : Turns)
    (hstep : CoordinateEndpointCondition f a b) (hx : InRectangle a b x) :
    ∃m : Mask,f x≤f (endpoint a b m) := by
  classical
  obtain ⟨y,hy,hxy,hends⟩ := partial_endpoint_bound f a b hstep Finset.univ x hx
  have hbits : ∀i : Fin 5,∃bit : Bool,y i=(if bit then b i else a i) := by
    intro i
    rcases hends i (Finset.mem_univ i) with ha | hb
    · exact ⟨false,by simpa using ha⟩
    · exact ⟨true,by simpa using hb⟩
  choose bits hbits using hbits
  obtain ⟨m,hm⟩ := maskBits_surjective bits
  refine ⟨m,?_⟩
  have hyeq : y=endpoint a b m := by
    funext i
    have hmi : maskBits m i=bits i := congrFun hm i
    simpa only [endpoint,hmi] using hbits i
  rw [←hyeq]
  exact hxy

/-- A checked common endpoint ceiling also bounds every point of the rectangle. -/
theorem endpoint_ceiling (f : Turns → ℝ) (a b x : Turns) (ceiling : ℝ)
    (hstep : CoordinateEndpointCondition f a b) (hx : InRectangle a b x)
    (hend : ∀m : Mask,f (endpoint a b m)≤ceiling) : f x≤ceiling := by
  obtain ⟨m,hm⟩ := endpoint_maximum f a b x hstep hx
  exact le_trans hm (hend m)

end Seed0024ClusterTubeCover20261007

#print axioms Seed0024ClusterTubeCover20261007.rectangle_update
#print axioms Seed0024ClusterTubeCover20261007.rectangle_update_endpoint
#print axioms Seed0024ClusterTubeCover20261007.coordinate_endpoint_step
#print axioms Seed0024ClusterTubeCover20261007.partial_endpoint_bound
#print axioms Seed0024ClusterTubeCover20261007.endpoint_maximum
#print axioms Seed0024ClusterTubeCover20261007.endpoint_ceiling
