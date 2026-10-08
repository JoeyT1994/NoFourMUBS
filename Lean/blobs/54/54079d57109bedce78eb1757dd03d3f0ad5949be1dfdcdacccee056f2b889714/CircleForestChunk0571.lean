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
def state_375937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
def hex_375937 : String := "42444143400A42094441439B0A0A41439B09070A0A0A4441434007424441439B40050507070740064244050A070707"
theorem cover_375937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375937 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_375937)
  decide +kernel
#print axioms cover_375937

def state_375985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 48)))
def hex_375985 : String := "4441434209404441439B0943420505050909094342084044050A090909"
theorem cover_375985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375985 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_375985)
  decide +kernel
#print axioms cover_375985

def state_376018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 92 else 96)))
def hex_376018 : String := "424441439B400505434005050541439B404209070943400742090740050544414340070A05430505414340070A0807"
theorem cover_376018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_376018)
  decide +kernel
#print axioms cover_376018

def state_376065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 92 else 96)))
def hex_376065 : String := "4244414342090A05430505414342060A0943060944410A05410A430A05"
theorem cover_376065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376065 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 29) (hex := hex_376065)
  decide +kernel
#print axioms cover_376065

def state_376094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 93 else 96)))
def hex_376094 : String := "404244050944054341080505420944054341050505"
theorem cover_376094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_376094)
  decide +kernel
#print axioms cover_376094

def state_376115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 93) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 96)))
def hex_376115 : String := "43404244050707424405414306050544054143050505400505"
theorem cover_376115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_376115)
  decide +kernel
#print axioms cover_376115

def state_376140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 97)))
def hex_376140 : String := "41434042444143400706090741080707420944410A430640070641060640420944430708070943400742444106060607400709"
theorem cover_376140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_376140)
  decide +kernel
#print axioms cover_376140
end Mub6.Numerical.CircleFullPrototype.Forest
