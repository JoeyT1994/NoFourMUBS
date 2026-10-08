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
def state_2309984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 90)))
def hex_2309984 : String := "41434244400641060808440608064342070808"
theorem cover_2309984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2309984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2309984)
  decide +kernel
#print axioms cover_2309984

def state_2310004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 106) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 90)))
def hex_2310004 : String := "43424440410543050805404143420805080841050A4405404142060508054244400641050A4008410808444006054006410608"
theorem cover_2310004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310004 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 51) (hex := hex_2310004)
  decide +kernel
#print axioms cover_2310004

def state_2310055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 107) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 90)))
def hex_2310055 : String := "43424440070A40080A444041420808084105420909400841420A08084244070844400841080808"
theorem cover_2310055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2310055)
  decide +kernel
#print axioms cover_2310055

def state_2310094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 91)))
def hex_2310094 : String := "4041080841434244400841430A080808444008414208050808084342080808"
theorem cover_2310094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2310094)
  decide +kernel
#print axioms cover_2310094

def state_2310125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 45)))
def hex_2310125 : String := "42444007414342070806070844400841434206060643080808"
theorem cover_2310125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2310125)
  decide +kernel
#print axioms cover_2310125

def state_2310151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 44)))
def hex_2310151 : String := "410543424044050A0540440541054305420A050542404407410A070A4044410507414305064342074044050A05420740060A440541050A"
theorem cover_2310151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_2310151)
  decide +kernel
#print axioms cover_2310151
end Mub6.Numerical.CircleFullD0.Forest
