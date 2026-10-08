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
def state_172966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 46)))
def hex_172966 : String := "4042430A084306094243414408400507080843064144084009424341050608094408400908"
theorem cover_172966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_172966 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_172966)
  decide +kernel
#print axioms cover_172966

def state_173003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 47)))
def hex_173003 : String := "404205434406054441050A0542434441050A05444105080543444140054205060641050A44410540420A43060942430A084306440841050805"
theorem cover_173003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173003 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_173003)
  decide +kernel
#print axioms cover_173003

def state_173060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 23)))
def hex_173060 : String := "430641444240064306090642400543080506440642404306064306444106064105424005430644410506050606"
theorem cover_173060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 45) (hex := hex_173060)
  decide +kernel
#print axioms cover_173060

def state_173107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 18 else (if j.val < 4 then 28 else 23)))
def hex_173107 : String := "41074407400707"
theorem cover_173107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173107 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_173107)
  decide +kernel
#print axioms cover_173107

def state_173115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 48) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 23)))
def hex_173115 : String := "44404207070740420543070507"
theorem cover_173115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_173115)
  decide +kernel
#print axioms cover_173115

def state_173129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 46)))
def hex_173129 : String := "4042434107080843410744064006074144084042074306070708424307084307410708"
theorem cover_173129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_173129)
  decide +kernel
#print axioms cover_173129

def state_173166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 36 else (if j.val < 4 then 29 else 47)))
def hex_173166 : String := "434407410507444140050708410540054205430505"
theorem cover_173166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_173166)
  decide +kernel
#print axioms cover_173166

def state_173188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 37 else (if j.val < 4 then 58 else 47)))
def hex_173188 : String := "444107404207060741074042070707"
theorem cover_173188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_173188 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_173188)
  decide +kernel
#print axioms cover_173188
end Mub6.Numerical.CircleFullPrototype.Forest
