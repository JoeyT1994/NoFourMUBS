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
def state_1595902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 24)))
def hex_1595902 : String := "4344094042410707080744094009420708"
theorem cover_1595902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595902 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1595902)
  decide +kernel
#print axioms cover_1595902

def state_1595921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 48)))
def hex_1595921 : String := "404207410743070707"
theorem cover_1595921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1595921)
  decide +kernel
#print axioms cover_1595921

def state_1595932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 49)))
def hex_1595932 : String := "414307440707430744074207400A07"
theorem cover_1595932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1595932)
  decide +kernel
#print axioms cover_1595932

def state_1595947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 49)))
def hex_1595947 : String := "414344070809434407404207410743070707444042070907404241430707430744070A41094344074009074409400907420707"
theorem cover_1595947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1595947)
  decide +kernel
#print axioms cover_1595947

def state_1595998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 49)))
def hex_1595998 : String := "4207410707"
theorem cover_1595998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1595998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1595998)
  decide +kernel
#print axioms cover_1595998

def state_1596004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 48)))
def hex_1596004 : String := "4042414307094307444207070A4105434405400507440540054207054207410707"
theorem cover_1596004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1596004)
  decide +kernel
#print axioms cover_1596004

def state_1596039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 49)))
def hex_1596039 : String := "4143444207070A0A43444207400A070A0A"
theorem cover_1596039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_1596039)
  decide +kernel
#print axioms cover_1596039

def state_1596057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 38) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 49)))
def hex_1596057 : String := "09"
theorem cover_1596057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1596057)
  decide +kernel
#print axioms cover_1596057

def state_1596059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 62 else 49)))
def hex_1596059 : String := "44404241090A0542074107074042410A0A41094344094006420706440906424107074108430744074042070607"
theorem cover_1596059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596059 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1596059)
  decide +kernel
#print axioms cover_1596059

def state_1596104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 39) else (if j.val < 3 then 51 else (if j.val < 4 then 63 else 49)))
def hex_1596104 : String := "4440420A054241090A410543440507440540050540420A06420A410943444042070507400642070644400642070606"
theorem cover_1596104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1596104)
  decide +kernel
#print axioms cover_1596104
end Mub6.Numerical.CircleFullD0.Forest
