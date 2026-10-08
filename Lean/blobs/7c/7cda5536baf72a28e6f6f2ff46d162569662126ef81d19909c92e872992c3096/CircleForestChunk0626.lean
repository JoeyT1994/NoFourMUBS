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
def state_389152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 23)))
def hex_389152 : String := "434044094243070A07440942430941444009420809400A420A43090A0A094006440A420A41060A"
theorem cover_389152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_389152)
  decide +kernel
#print axioms cover_389152

def state_389193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 22)))
def hex_389193 : String := "41434207070708"
theorem cover_389193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389193 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_389193)
  decide +kernel
#print axioms cover_389193

def state_389203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 23)))
def hex_389203 : String := "440840414308420744070908410708"
theorem cover_389203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389203 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_389203)
  decide +kernel
#print axioms cover_389203

def state_389219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 46)))
def hex_389219 : String := "4041070807"
theorem cover_389219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_389219)
  decide +kernel
#print axioms cover_389219

def state_389228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 56 else 94)))
def hex_389228 : String := "4240410708074041074308440742070707"
theorem cover_389228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389228 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_389228)
  decide +kernel
#print axioms cover_389228

def state_389246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 98 else (if j.val < 4 then 56 else 95)))
def hex_389246 : String := "404143440842050A440742050708410708"
theorem cover_389246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_389246)
  decide +kernel
#print axioms cover_389246

def state_389263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 99 else (if j.val < 4 then 56 else 95)))
def hex_389263 : String := "4041430A440742070A434442080A42080A4442400807B54240414344080544070508410708B5410743064407420707"
theorem cover_389263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_389263)
  decide +kernel
#print axioms cover_389263

def state_389310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 57 else 47)))
def hex_389310 : String := "440742404341074407090707404341074442070742404341074408050907B54106440742070707"
theorem cover_389310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389310 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 39) (hex := hex_389310)
  decide +kernel
#print axioms cover_389310

def state_389349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 47)))
def hex_389349 : String := "434408420840410808084442084041430807084107084208404143444208B54208B544420AB5420AB543080A414344074208B50708"
theorem cover_389349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_389349 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_389349)
  decide +kernel
#print axioms cover_389349
end Mub6.Numerical.CircleFullPrototype.Forest
