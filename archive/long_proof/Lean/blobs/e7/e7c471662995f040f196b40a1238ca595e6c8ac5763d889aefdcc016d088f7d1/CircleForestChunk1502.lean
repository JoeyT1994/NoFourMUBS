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
def state_1661179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
def hex_1661179 : String := "43404241444308060806064241050841444305060506400642410944060606"
theorem cover_1661179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_1661179)
  decide +kernel
#print axioms cover_1661179

def state_1661210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
def hex_1661210 : String := "434042080805404241444342050606054406074144064305060642410505410505"
theorem cover_1661210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1661210)
  decide +kernel
#print axioms cover_1661210

def state_1661243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
def hex_1661243 : String := "44064308400608"
theorem cover_1661243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661243 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1661243)
  decide +kernel
#print axioms cover_1661243

def state_1661250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 4)))
def hex_1661250 : String := "41444006094042070642074341440605060606"
theorem cover_1661250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1661250)
  decide +kernel
#print axioms cover_1661250

def state_1661269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1661269 : String := "424341054440070505074341444043050905054440430842090609054144094042070905440907"
theorem cover_1661269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1661269)
  decide +kernel
#print axioms cover_1661269

def state_1661308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1661308 : String := "40424344410505050A4344414305400A0508050A4205430505"
theorem cover_1661308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_1661308)
  decide +kernel
#print axioms cover_1661308

def state_1661333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1661333 : String := "444042070607400A4205440705"
theorem cover_1661333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661333 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1661333)
  decide +kernel
#print axioms cover_1661333

def state_1661348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 4)))
def hex_1661348 : String := "40434142440643400605400641420505060606064341424440430509050505424440060505054142440940434105050605440640060542440640060506"
theorem cover_1661348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661348 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1661348)
  decide +kernel
#print axioms cover_1661348
end Mub6.Numerical.CircleFullD0.Forest
