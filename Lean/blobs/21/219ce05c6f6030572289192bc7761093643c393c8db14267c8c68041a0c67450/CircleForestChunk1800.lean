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
def state_2305165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 110 else 182)))
def hex_2305165 : String := "4041C44243444041C4084105420905400841C40808434440410508054008410508084105424344050A444041050A05404108080A43054405400805"
theorem cover_2305165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305165 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_2305165)
  decide +kernel
#print axioms cover_2305165

def state_2305224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 110 else 183)))
def hex_2305224 : String := "4041C44243080843080841424307070742434440410A060640410706064440080A08430708"
theorem cover_2305224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2305224)
  decide +kernel
#print axioms cover_2305224

def state_2305262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 111 else 91)))
def hex_2305262 : String := "444041434208080608414342440A0A44404105080540080A42080843420A440A080840084143424440080A08080808"
theorem cover_2305262 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305262 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2305262)
  decide +kernel
#print axioms cover_2305262

def state_2305309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 111 else 91)))
def hex_2305309 : String := "4440410608414342440540080544054006050643424440080A08444008050808400841434208070808"
theorem cover_2305309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2305309)
  decide +kernel
#print axioms cover_2305309

def state_2305351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 91)))
def hex_2305351 : String := "430542440540410543420905090507"
theorem cover_2305351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_2305351)
  decide +kernel
#print axioms cover_2305351
end Mub6.Numerical.CircleFullD0.Forest
