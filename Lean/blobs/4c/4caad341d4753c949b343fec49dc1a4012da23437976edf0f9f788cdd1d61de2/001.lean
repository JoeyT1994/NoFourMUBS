import SharedSeedIntervals

set_option autoImplicit false

set_option maxRecDepth 8192

set_option maxHeartbeats 0

namespace SharedSeedProducerControl

open Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.CarrierIntervals Mub6.Classification.SharedSeedIntervals

open Mub6.Classification.FourPhase Mub6.Classification.CompactCover

noncomputable section

def signs : SeedSigns := ![false,true,false,true]

def cell : Fin 4 → Interval := ![⟨(0),(1/4)⟩,⟨(-1/4),(0)⟩,⟨(1/4),(1/2)⟩,⟨(-1/2),(-1/4)⟩]

def seed : SeedBoxes := ![⟨(15/17),(1),(0),(1/2)⟩,⟨(-1),(-15/17),(0),(1/2)⟩,⟨(3/5),(15/17),(2/5),(16/17)⟩,⟨(-15/17),(-3/5),(2/5),(16/17)⟩]

theorem seed_eq : ∀ i, seed i = circleSeedBoxes signs cell i := by decide +kernel

theorem seed_sound {t : SeedParameters} (ht : ∀ i, Mem (cell i) (t i)) :
    ∀ i, MemRectangle (seed i) (circleSeed signs t i) := by
  intro i
  rw [seed_eq]
  exact circleSeedBoxes_sound signs ht i

def horizontal_s : RationalRectangle := ⟨(-19/17),(-15/17),(-1),(0)⟩

theorem horizontal_s_eq : horizontal_s = (horizontalBoxes seed).s := by decide +kernel

def horizontal_t : RationalRectangle := ⟨(-109/85),(-61/85),(-32/17),(-4/5)⟩

theorem horizontal_t_eq : horizontal_t = (horizontalBoxes seed).t := by decide +kernel

def horizontal_r : RationalRectangle := ⟨(-63/17),(-35/17),(-35/34),(35/34)⟩

theorem horizontal_r_eq : horizontal_r = (horizontalBoxes seed).r := by decide +kernel

def horizontal_g : Interval := ⟨(-34998219/491300),(287031/24565)⟩

theorem horizontal_g_eq : horizontal_g = gBox (horizontalBoxes seed) := by decide +kernel

def horizontal_sigma : Interval := ⟨(137851/28900),(30096/1445)⟩

theorem horizontal_sigma_eq : horizontal_sigma = sigmaBox (horizontalBoxes seed) := by decide +kernel

def horizontal_eta : Interval := ⟨(-37776699/491300),(9370243/245650)⟩

theorem horizontal_eta_eq : horizontal_eta = etaBox (horizontalBoxes seed) := by decide +kernel

def horizontal_chi : Interval := ⟨(-141734120963127/241375690000),(107879083442769/120687845000)⟩

theorem horizontal_chi_eq : horizontal_chi = chiBox (horizontalBoxes seed) := by decide +kernel

def horizontal_radicand : Interval := ⟨(-34371205834401131158418258061/14565555930744025000000),(11477379516527235356523/14823484562125000)⟩

theorem horizontal_radicand_eq : horizontal_radicand = radicandBox (horizontalBoxes seed) := by decide +kernel

def horizontal_q : Fin 3 → Interval := ![⟨(-6697/1156),(1376/289)⟩,⟨(27544/7225),(11336/1445)⟩,⟨(1951/289),(2376/289)⟩]

theorem horizontal_q_eq : ∀ i, horizontal_q i = qBox (horizontalBoxes seed) i := by decide +kernel

def horizontal_numerator : Fin 3 → RationalRectangle := ![⟨(-271647503/8352100),(85041784/2088025),(-23556785/334084),(28612/24565)⟩,⟨(-421402093/8352100),(37180429/1670420),(-1582419/83521),(107612036/2088025)⟩,⟨(-278198499/8352100),(192688323/8352100),(-56267043/2088025),(279296409/8352100)⟩]

theorem horizontal_numerator_eq : ∀ i, horizontal_numerator i = numeratorBox (horizontalBoxes seed) i := by decide +kernel

def vertical_s : RationalRectangle := ⟨(-49/17),(-211/85),(-49/34),(-2/5)⟩

theorem vertical_s_eq : vertical_s = (verticalBoxes seed).s := by decide +kernel

def vertical_t : RationalRectangle := ⟨(41/85),(15/17),(-49/34),(-2/5)⟩

theorem vertical_t_eq : vertical_t = (verticalBoxes seed).t := by decide +kernel

def vertical_r : RationalRectangle := ⟨(-28821/28900),(4469/7225),(-769/289),(-12/25)⟩

theorem vertical_r_eq : vertical_r = (verticalBoxes seed).r := by decide +kernel

def vertical_g : Interval := ⟨(-61061438173/835210000),(1112737793/104401250)⟩

theorem vertical_g_eq : vertical_g = gBox (verticalBoxes seed) := by decide +kernel

def vertical_sigma : Interval := ⟨(4747824959/835210000),(3622409/180625)⟩

theorem vertical_sigma_eq : vertical_sigma = sigmaBox (verticalBoxes seed) := by decide +kernel

def vertical_eta : Interval := ⟨(-12898783321/167042000),(14736906213/417605000)⟩

theorem vertical_eta_eq : vertical_eta = etaBox (verticalBoxes seed) := by decide +kernel

def vertical_chi : Interval := ⟨(-204012146299464757859/348787872050000000),(58737594169512990493/69757574410000000)⟩

theorem vertical_chi_eq : vertical_chi = chiBox (verticalBoxes seed) := by decide +kernel

def vertical_radicand : Interval := ⟨(-11483673197566240235027802063299544161049/4866119187566686848100000000000000),(54946543493617483338227983772877/72827779653720125000000000)⟩

theorem vertical_radicand_eq : vertical_radicand = radicandBox (verticalBoxes seed) := by decide +kernel

def vertical_q : Fin 3 → Interval := ![⟨(772629959/835210000),(5481/625)⟩,⟨(7103/1156),(62188/7225)⟩,⟨(-1601/1156),(19348/7225)⟩]

theorem vertical_q_eq : ∀ i, vertical_q i = qBox (verticalBoxes seed) i := by decide +kernel

def vertical_numerator : Fin 3 → RationalRectangle := ![⟨(-873807669/41760500),(57158298093113/965502760000),(-29471909909401/482751380000),(12222532124207/482751380000)⟩,⟨(-103166651347/3549642500),(416113205823/14198570000),(-260160556543/7099285000),(724519705161/28397140000)⟩,⟨(-849626083081/70992850000),(1045503726929/14198570000),(-93577661019/1774821250),(1983788542229/70992850000)⟩]

theorem vertical_numerator_eq : ∀ i, vertical_numerator i = numeratorBox (verticalBoxes seed) i := by decide +kernel

def shared_g : Interval := ⟨(-34998219/491300),(1112737793/104401250)⟩

theorem shared_g_eq : shared_g = meetInterval (gBox (horizontalBoxes seed)) (gBox (verticalBoxes seed)) := by decide +kernel

def shared_eta : Interval := ⟨(-37776699/491300),(14736906213/417605000)⟩

theorem shared_eta_eq : shared_eta = meetInterval (etaBox (horizontalBoxes seed)) (etaBox (verticalBoxes seed)) := by decide +kernel

def shared_chi : Interval := ⟨(-204012146299464757859/348787872050000000),(58737594169512990493/69757574410000000)⟩

theorem shared_chi_eq : shared_chi = meetInterval (chiBox (horizontalBoxes seed)) (chiBox (verticalBoxes seed)) := by decide +kernel

def shared_radicand : Interval := ⟨(-34371205834401131158418258061/14565555930744025000000),(54946543493617483338227983772877/72827779653720125000000000)⟩

theorem shared_radicand_eq : shared_radicand = meetInterval (radicandBox (horizontalBoxes seed)) (radicandBox (verticalBoxes seed)) := by decide +kernel

def sqrtUpper : ℚ := (28462405/32768)

theorem sqrt_upper_certificate : 0 ≤ sqrtUpper ∧ shared_radicand.hi ≤ sqrtUpper^2 := by decide +kernel

#print axioms seed_eq

#print axioms seed_sound

#print axioms horizontal_s_eq

#print axioms horizontal_t_eq

#print axioms horizontal_r_eq

#print axioms horizontal_g_eq

#print axioms horizontal_sigma_eq

#print axioms horizontal_eta_eq

#print axioms horizontal_chi_eq

#print axioms horizontal_radicand_eq

#print axioms horizontal_q_eq

#print axioms horizontal_numerator_eq

#print axioms vertical_s_eq

#print axioms vertical_t_eq

#print axioms vertical_r_eq

#print axioms vertical_g_eq

#print axioms vertical_sigma_eq

#print axioms vertical_eta_eq

#print axioms vertical_chi_eq

#print axioms vertical_radicand_eq

#print axioms vertical_q_eq

#print axioms vertical_numerator_eq

#print axioms shared_g_eq

#print axioms shared_eta_eq

#print axioms shared_chi_eq

#print axioms shared_radicand_eq

#print axioms sqrt_upper_certificate

end

end SharedSeedProducerControl
