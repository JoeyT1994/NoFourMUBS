import RadianSeedBounds

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace ShoulderQuadratic20261003
open Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open scoped BigOperators
noncomputable section

def sumI : {n : ℕ} → (Fin n → Interval) → Interval
  | 0, _ => point 0
  | n+1, f => add (f 0) (sumI (fun i : Fin n => f i.succ))

theorem mem_sumI {n : ℕ} (f : Fin n → Interval) (z : Fin n → ℝ)
    (h : ∀ i, Mem (f i) (z i)) : Mem (sumI f) (∑ i, z i) := by
  induction n with
  | zero => simp [sumI,point,Mem]
  | succ n ih =>
    rw [Fin.sum_univ_succ]
    exact mem_add (h 0) (ih _ _ (fun i => h i.succ))

def lin (d x : Fin 4 → ℝ) : ℝ := ∑ i, d i*x i
def quad (q : Fin 4 → Fin 4 → ℝ) (x : Fin 4 → ℝ) : ℝ :=
  ∑ i, ∑ j, q i j*x i*x j

theorem lin_add (a b x : Fin 4 → ℝ) :
    lin (fun i => a i+b i) x=lin a x+lin b x := by
  simp [lin,add_mul,Finset.sum_add_distrib]

theorem lin_scale (c : ℝ) (a x : Fin 4 → ℝ) :
    lin (fun i => c*a i) x=c*lin a x := by
  simp [lin,Finset.mul_sum,mul_assoc]

theorem quad_add (a b : Fin 4 → Fin 4 → ℝ) (x : Fin 4 → ℝ) :
    quad (fun i j => a i j+b i j) x=quad a x+quad b x := by
  simp [quad,add_mul,Finset.sum_add_distrib]

theorem quad_scale (c : ℝ) (a : Fin 4 → Fin 4 → ℝ) (x : Fin 4 → ℝ) :
    quad (fun i j => c*a i j) x=c*quad a x := by
  simp [quad,Finset.mul_sum,mul_assoc]

theorem quad_outer (a b x : Fin 4 → ℝ) :
    quad (fun i j => a i*b j) x=lin a x*lin b x := by
  simp only [quad,lin,Finset.sum_mul,Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  ring

theorem quad_sym_outer (a b x : Fin 4 → ℝ) :
    quad (fun i j => (a i*b j+b i*a j)/2) x=lin a x*lin b x := by
  have he : (fun i j => (a i*b j+b i*a j)/2) =
      (fun i j => (1/2:ℝ)*(a i*b j+b i*a j)) := by funext i j;ring
  rw [he,quad_scale,quad_add,quad_outer,quad_outer]
  ring

structure Box where
  c : Interval
  d : Fin 4 → Interval
  q : Fin 4 → Fin 4 → Interval
  e : Interval

def Encloses (B : Box) (x : Fin 4 → ℝ) (z : ℝ) : Prop :=
  ∃ c d q e, Mem B.c c ∧ (∀ i, Mem (B.d i) (d i)) ∧
    (∀ i j, Mem (B.q i j) (q i j)) ∧ Mem B.e e ∧
    z=c+lin d x+quad q x+e

def linI (D : Fin 4 → Interval) (B : Box) : Interval :=
  sumI (fun i => mul (B.d i) (D i))
def quadI (D : Fin 4 → Interval) (B : Box) : Interval :=
  sumI (fun i => sumI (fun j => mul (B.q i j)
    (if i=j then square (D i) else mul (D i) (D j))))
def range (D : Fin 4 → Interval) (B : Box) : Interval :=
  add (add (add B.c (linI D B)) (quadI D B)) B.e

theorem linI_sound {D : Fin 4 → Interval} {B : Box} {d x : Fin 4 → ℝ}
    (hd : ∀ i, Mem (B.d i) (d i)) (hx : ∀ i, Mem (D i) (x i)) :
    Mem (linI D B) (lin d x) :=
  mem_sumI _ _ (fun i => mem_mul (hd i) (hx i))

theorem quadI_sound {D : Fin 4 → Interval} {B : Box}
    {q : Fin 4 → Fin 4 → ℝ} {x : Fin 4 → ℝ}
    (hq : ∀ i j, Mem (B.q i j) (q i j)) (hx : ∀ i, Mem (D i) (x i)) :
    Mem (quadI D B) (quad q x) := by
  apply mem_sumI
  intro i
  apply mem_sumI
  intro j
  have h : Mem (if i=j then square (D i) else mul (D i) (D j)) (x i*x j) := by
    by_cases he : i=j
    · subst j;simpa using mem_square (hx i)
    · simpa [he] using mem_mul (hx i) (hx j)
  simpa only [mul_assoc] using mem_mul (hq i j) h

theorem range_sound {D : Fin 4 → Interval} {B : Box} {x : Fin 4 → ℝ} {z : ℝ}
    (hx : ∀ i, Mem (D i) (x i)) (h : Encloses B x z) : Mem (range D B) z := by
  obtain ⟨c,d,q,e,hc,hd,hq,he,rfl⟩ := h
  exact mem_add (mem_add (mem_add hc (linI_sound hd hx)) (quadI_sound hq hx)) he

def IncludesBox (A B : Box) : Prop := Includes A.c B.c ∧
  (∀ i, Includes (A.d i) (B.d i)) ∧ (∀ i j, Includes (A.q i j) (B.q i j)) ∧
  Includes A.e B.e
instance (A B : Box) : Decidable (IncludesBox A B) := by unfold IncludesBox;infer_instance

theorem encloses_mono {A B : Box} {x : Fin 4 → ℝ} {z : ℝ}
    (h : IncludesBox A B) (hz : Encloses A x z) : Encloses B x z := by
  obtain ⟨c,d,q,e,hc,hd,hq,he,eq⟩ := hz
  exact ⟨c,d,q,e,mem_mono h.1 hc,fun i => mem_mono (h.2.1 i) (hd i),
    fun i j => mem_mono (h.2.2.1 i j) (hq i j),mem_mono h.2.2.2 he,eq⟩

def addB (A B : Box) : Box := ⟨add A.c B.c,fun i => add (A.d i) (B.d i),
  fun i j => add (A.q i j) (B.q i j),add A.e B.e⟩
def negB (A : Box) : Box := ⟨neg A.c,fun i => neg (A.d i),
  fun i j => neg (A.q i j),neg A.e⟩
def pointB (c : ℚ) : Box := ⟨point c,fun _ => point 0,fun _ _ => point 0,point 0⟩

theorem pointB_sound (c : ℚ) (x : Fin 4 → ℝ) : Encloses (pointB c) x (c:ℝ) := by
  refine ⟨c,fun _ => 0,fun _ _ => 0,0,mem_point c,?_,?_,mem_point 0,?_⟩
  · exact fun _ => mem_point 0
  · exact fun _ _ => mem_point 0
  · simp [lin,quad]

theorem addB_sound {A B : Box} {x : Fin 4 → ℝ} {a b : ℝ}
    (ha : Encloses A x a) (hb : Encloses B x b) : Encloses (addB A B) x (a+b) := by
  obtain ⟨c,d,q,e,hc,hd,hq,he,ea⟩ := ha
  obtain ⟨c',d',q',e',hc',hd',hq',he',eb⟩ := hb
  refine ⟨c+c',fun i => d i+d' i,fun i j => q i j+q' i j,e+e',
    mem_add hc hc',fun i => mem_add (hd i) (hd' i),
    fun i j => mem_add (hq i j) (hq' i j),mem_add he he',?_⟩
  rw [ea,eb,lin_add,quad_add];ring

theorem negB_sound {A : Box} {x : Fin 4 → ℝ} {a : ℝ}
    (ha : Encloses A x a) : Encloses (negB A) x (-a) := by
  obtain ⟨c,d,q,e,hc,hd,hq,he,ea⟩ := ha
  refine ⟨-c,fun i => -d i,fun i j => -q i j,-e,mem_neg hc,
    fun i => mem_neg (hd i),fun i j => mem_neg (hq i j),mem_neg he,?_⟩
  simp only [lin,quad,neg_mul,Finset.sum_neg_distrib] at ea ⊢
  rw [ea];ring

def mulB (D : Fin 4 → Interval) (A B : Box) : Box :=
  let la := linI D A; let lb := linI D B
  let qa := quadI D A; let qb := quadI D B
  ⟨mul A.c B.c,
    fun i => add (mul A.c (B.d i)) (mul B.c (A.d i)),
    fun i j => add (add (mul A.c (B.q i j)) (mul B.c (A.q i j)))
      (mul (point (1/2)) (add (mul (A.d i) (B.d j)) (mul (B.d i) (A.d j)))),
    add (add (add (add (add (add (add (mul A.c B.e) (mul B.c A.e))
      (mul la qb)) (mul qa lb)) (mul qa qb))
      (mul (add la qa) B.e)) (mul (add lb qb) A.e)) (mul A.e B.e)⟩

theorem mulB_sound {D : Fin 4 → Interval} {A B : Box} {x : Fin 4 → ℝ} {a b : ℝ}
    (hx : ∀ i, Mem (D i) (x i)) (ha : Encloses A x a) (hb : Encloses B x b) :
    Encloses (mulB D A B) x (a*b) := by
  obtain ⟨c,d,q,e,hc,hd,hq,he,ea⟩ := ha
  obtain ⟨c',d',q',e',hc',hd',hq',he',eb⟩ := hb
  have hla := linI_sound hd hx
  have hlb := linI_sound hd' hx
  have hqa := quadI_sound hq hx
  have hqb := quadI_sound hq' hx
  refine ⟨c*c',fun i => c*d' i+c'*d i,
    fun i j => c*q' i j+c'*q i j+(1/2)*(d i*d' j+d' i*d j),
    c*e'+c'*e+lin d x*quad q' x+quad q x*lin d' x+quad q x*quad q' x+
      (lin d x+quad q x)*e'+(lin d' x+quad q' x)*e+e*e',
    mem_mul hc hc',fun i => mem_add (mem_mul hc (hd' i)) (mem_mul hc' (hd i)),
    fun i j => mem_add (mem_add (mem_mul hc (hq' i j)) (mem_mul hc' (hq i j)))
      (mem_mul (mem_point (1/2)) (mem_add (mem_mul (hd i) (hd' j)) (mem_mul (hd' i) (hd j)))),?_,?_⟩
  · exact mem_add (mem_add (mem_add (mem_add (mem_add (mem_add (mem_add
      (mem_mul hc he') (mem_mul hc' he)) (mem_mul hla hqb)) (mem_mul hqa hlb))
      (mem_mul hqa hqb)) (mem_mul (mem_add hla hqa) he'))
      (mem_mul (mem_add hlb hqb) he)) (mem_mul he he')
  · have hh : quad (fun i j => (1/2:ℝ)*(d i*d' j+d' i*d j)) x=lin d x*lin d' x := by
      convert quad_sym_outer d d' x using 2 <;> funext i j <;> ring
    rw [ea,eb,lin_add,lin_scale,lin_scale,quad_add,quad_add,quad_scale,quad_scale,hh]
    ring

#print axioms range_sound
#print axioms mulB_sound
#print axioms addB_sound
#print axioms encloses_mono
end
end ShoulderQuadratic20261003
