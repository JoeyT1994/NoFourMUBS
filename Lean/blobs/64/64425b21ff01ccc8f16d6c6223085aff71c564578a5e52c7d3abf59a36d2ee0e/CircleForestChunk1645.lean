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
def state_2268036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
def hex_2268036 : String := "41444009434241440909090942410A090940430909434241060609420609440909"
theorem cover_2268036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2268036)
  decide +kernel
#print axioms cover_2268036

def state_2268069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 28)))
def hex_2268069 : String := "4205414440434241090508084342410A05090A40060605"
theorem cover_2268069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2268069)
  decide +kernel
#print axioms cover_2268069

def state_2268092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 29)))
def hex_2268092 : String := "400643420641060605"
theorem cover_2268092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2268092)
  decide +kernel
#print axioms cover_2268092

def state_2268101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 14)))
def hex_2268101 : String := "4440430705434205090505"
theorem cover_2268101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2268101)
  decide +kernel
#print axioms cover_2268101

def state_2268112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 14)))
def hex_2268112 : String := "434144400942430909050909414440094243094109080940094243094106060909"
theorem cover_2268112 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268112 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2268112)
  decide +kernel
#print axioms cover_2268112

def state_2268145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 15)))
def hex_2268145 : String := "42434140074442064307060607064341090741400644090609"
theorem cover_2268145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2268145)
  decide +kernel
#print axioms cover_2268145

def state_2268179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 28)))
def hex_2268179 : String := "4440424305410844400708074305410505420805400808"
theorem cover_2268179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2268179)
  decide +kernel
#print axioms cover_2268179

def state_2268204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 56)))
def hex_2268204 : String := "42074307414440074207050707"
theorem cover_2268204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2268204)
  decide +kernel
#print axioms cover_2268204

def state_2268217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 56)))
def hex_2268217 : String := "424341440507074144404307420741050708084440070A07434105440507414405404208050544404207094243050A05400742074305410507"
theorem cover_2268217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268217 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2268217)
  decide +kernel
#print axioms cover_2268217

def state_2268274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 57)))
def hex_2268274 : String := "400742430708434108074108440707"
theorem cover_2268274 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2268274 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2268274)
  decide +kernel
#print axioms cover_2268274
end Mub6.Numerical.CircleFullD0.Forest
