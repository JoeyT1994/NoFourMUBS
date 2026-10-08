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
def state_1625458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 35)))
def hex_1625458 : String := "434109420909414240094443410909414208080A09400944430941420807420A090942400944434109090A0A400944434109090A09"
theorem cover_1625458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625458 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1625458)
  decide +kernel
#print axioms cover_1625458

def state_1625513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 34)))
def hex_1625513 : String := "41424044430741064206070606400707424044430541420507050505400705"
theorem cover_1625513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625513 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1625513)
  decide +kernel
#print axioms cover_1625513

def state_1625546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
def hex_1625546 : String := "40444341084240440843060806404407430708440843060841084208084341064206404443070843054106050641084240080640080844430641060906"
theorem cover_1625546 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625546 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1625546)
  decide +kernel
#print axioms cover_1625546

def state_1625607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
def hex_1625607 : String := "40444341070741084208074341074240070707410842400808400707444341420807424007050741084208084341420607420507410842400805400808"
theorem cover_1625607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625607 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 61) (hex := hex_1625607)
  decide +kernel
#print axioms cover_1625607

def state_1625673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 206) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
def hex_1625673 : String := "424044434142050505410842054008054305414205050505404443074107074307410742050744430541070505"
theorem cover_1625673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625673 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1625673)
  decide +kernel
#print axioms cover_1625673
end Mub6.Numerical.CircleFullD0.Forest
