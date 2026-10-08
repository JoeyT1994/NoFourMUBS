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
def state_139197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_139197 : String := "41424307440806430844414305400505054143074408070742434405424405400505054407424307080707"
theorem cover_139197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139197 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_139197)
  decide +kernel
#print axioms cover_139197

def state_139240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_139240 : String := "41424344064041060606444041060606064344074007094440414305420705050707424344084042440541080505084440070A08430807"
theorem cover_139240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_139240)
  decide +kernel
#print axioms cover_139240

def state_139297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
def hex_139297 : String := "42434441420707424440074342440708070740090844074007430807414205400707420940094344410A06060944070943440741074006424306060607"
theorem cover_139297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139297 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_139297)
  decide +kernel
#print axioms cover_139297

def state_139362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
def hex_139362 : String := "444041434244050905074305420705414342444005054009080842440708074342440540050505420A054009414342090808434209444005050609"
theorem cover_139362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139362 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_139362)
  decide +kernel
#print axioms cover_139362

def state_139421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
def hex_139421 : String := "444005054041080608"
theorem cover_139421 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139421 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_139421)
  decide +kernel
#print axioms cover_139421

def state_139430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
def hex_139430 : String := "420940064143060606"
theorem cover_139430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_139430)
  decide +kernel
#print axioms cover_139430
end Mub6.Numerical.CircleFullPrototype.Forest
