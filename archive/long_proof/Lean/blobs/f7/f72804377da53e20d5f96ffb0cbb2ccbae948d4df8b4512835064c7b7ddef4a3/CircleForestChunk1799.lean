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
def state_2304934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 73 else (if j.val < 4 then 111 else 90)))
def hex_2304934 : String := "4440410543050605404106434208060641054342440540410508050542444006050806"
theorem cover_2304934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2304934)
  decide +kernel
#print axioms cover_2304934

def state_2304969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 52) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 90)))
def hex_2304969 : String := "410543054244054041050A0505"
theorem cover_2304969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2304969)
  decide +kernel
#print axioms cover_2304969

def state_2304985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 110 else 91)))
def hex_2304985 : String := "424440C40540C441054307424440410543050A0540410743070707074440C40507"
theorem cover_2304985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2304985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 33) (hex := hex_2304985)
  decide +kernel
#print axioms cover_2304985

def state_2305018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 104) else (if j.val < 3 then 36 else (if j.val < 4 then 111 else 91)))
def hex_2305018 : String := "424440064105434244054006050506404106084109434244404106080909444006050708440640064106430706"
theorem cover_2305018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_2305018)
  decide +kernel
#print axioms cover_2305018

def state_2305066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 110 else 182)))
def hex_2305066 : String := "4041C44342440A404108070A444041C4080A40080A4244070844400841080808414305420A44054041050A05430A0A"
theorem cover_2305066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_2305066)
  decide +kernel
#print axioms cover_2305066

def state_2305113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 105) else (if j.val < 3 then 72 else (if j.val < 4 then 110 else 183)))
def hex_2305113 : String := "4041C443424440080A0844400841080808084143420A444041050A050742440A0A444041430508080A400807430A420A440A08"
theorem cover_2305113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2305113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2305113)
  decide +kernel
#print axioms cover_2305113
end Mub6.Numerical.CircleFullD0.Forest
