import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_293018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_293018 : String := "4043414206054244050505410606430A06"
theorem cover_293018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_293018)
  decide +kernel
#print axioms cover_293018

def state_293040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 12)))
def hex_293040 : String := "4340444143420A0A4208400805434240440543090505404405430605050541084342084044430608060608440508400805"
theorem cover_293040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_293040)
  decide +kernel
#print axioms cover_293040

def state_293090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
def hex_293090 : String := "40444142430640440541074205060507424306054306404405060541424306080642430640444108420806080806440606"
theorem cover_293090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293090 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_293090)
  decide +kernel
#print axioms cover_293090

def state_293139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
def hex_293139 : String := "40444142434008050507054108420809440508"
theorem cover_293139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_293139)
  decide +kernel
#print axioms cover_293139

def state_293159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 7 else 12)))
def hex_293159 : String := "434044054341420740070607410807054044050805"
theorem cover_293159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_293159)
  decide +kernel
#print axioms cover_293159

def state_293180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
def hex_293180 : String := "4340444243410605054306054243410606414044420505070540070543064106064405064044054241080541434044050805050505"
theorem cover_293180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_293180)
  decide +kernel
#print axioms cover_293180

def state_293233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 13)))
def hex_293233 : String := "414208434044414208064208060606084243400708084340444207060606404442084108080808"
theorem cover_293233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_293233)
  decide +kernel
#print axioms cover_293233
end Mub6.Numerical.CircleFullPrototype.Forest
