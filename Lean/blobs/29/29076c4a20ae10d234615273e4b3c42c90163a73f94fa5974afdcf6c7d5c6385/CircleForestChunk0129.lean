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
def state_52199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_52199 : String := "444340090909434041424409099042069041420A904206904041094207070A"
theorem cover_52199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_52199)
  decide +kernel
#print axioms cover_52199

def state_52231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_52231 : String := "434041444208089044089041440790440790404109084144060608"
theorem cover_52231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 27) (hex := hex_52231)
  decide +kernel
#print axioms cover_52231

def state_52258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 41)))
def hex_52258 : String := "43904041424409050542440807440805414244090A064244094340070A074443400806064340070606"
theorem cover_52258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_52258)
  decide +kernel
#print axioms cover_52258

def state_52299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_52299 : String := "424405434006414205900540074142054405070544434008080843404190074190424405064408074007414244080744080708"
theorem cover_52299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_52299)
  decide +kernel
#print axioms cover_52299

def state_52351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_52351 : String := "42440543410A0A0A444341074044059005410640440542050605434140900640904244050A06410640420A060A"
theorem cover_52351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_52351)
  decide +kernel
#print axioms cover_52351

def state_52397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 40 else (if j.val < 4 then 48 else 20)))
def hex_52397 : String := "05"
theorem cover_52397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52397 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_52397)
  decide +kernel
#print axioms cover_52397

def state_52399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 48 else 40)))
def hex_52399 : String := "05"
theorem cover_52399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52399 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_52399)
  decide +kernel
#print axioms cover_52399

def state_52401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 41 else (if j.val < 4 then 96 else 41)))
def hex_52401 : String := "40419042054405434041420544050705054007054142054405434140420506050541060505"
theorem cover_52401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52401 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_52401)
  decide +kernel
#print axioms cover_52401
end Mub6.Numerical.CircleFullPrototype.Forest
