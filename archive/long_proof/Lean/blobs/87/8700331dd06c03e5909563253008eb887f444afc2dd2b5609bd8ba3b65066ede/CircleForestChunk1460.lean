import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1651154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 85)))
def hex_1651154 : String := "42414043440A080A4308440708400A43084407084140430A0643084442070608400608"
theorem cover_1651154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651154 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_1651154)
  decide +kernel
#print axioms cover_1651154

def state_1651189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 107 else 42)))
def hex_1651189 : String := "44420706424140070740060706"
theorem cover_1651189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1651189)
  decide +kernel
#print axioms cover_1651189

def state_1651202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
def hex_1651202 : String := "40430A0643444241400643440708070A064241400A080A0A44060A"
theorem cover_1651202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1651202)
  decide +kernel
#print axioms cover_1651202

def state_1651229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 53 else 42)))
def hex_1651229 : String := "414006434406424140060806060606"
theorem cover_1651229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1651229)
  decide +kernel
#print axioms cover_1651229

def state_1651244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 43)))
def hex_1651244 : String := "42414044430906094443084241400A4407080A4140064406080608400A4443080A084140064443080608400608"
theorem cover_1651244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651244 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1651244)
  decide +kernel
#print axioms cover_1651244

def state_1651289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
def hex_1651289 : String := "404344060906434442414043050A05054140060806084442414006434406080606064241400A080A06"
theorem cover_1651289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1651289)
  decide +kernel
#print axioms cover_1651289

def state_1651330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 26 else 21)))
def hex_1651330 : String := "41400643444241400608060608064006430806"
theorem cover_1651330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1651330)
  decide +kernel
#print axioms cover_1651330

def state_1651349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 27 else 10)))
def hex_1651349 : String := "44064241400644064342414006444342070606430A060A06060606"
theorem cover_1651349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1651349)
  decide +kernel
#print axioms cover_1651349

def state_1651380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
def hex_1651380 : String := "43420909420841440509440A09"
theorem cover_1651380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651380 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1651380)
  decide +kernel
#print axioms cover_1651380
end Mub6.Numerical.CircleFullD0.Forest
