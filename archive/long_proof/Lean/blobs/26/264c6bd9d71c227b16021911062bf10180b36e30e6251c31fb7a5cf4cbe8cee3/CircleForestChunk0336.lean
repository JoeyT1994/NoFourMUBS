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
def state_155997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_155997 : String := "40414208440643060708410806"
theorem cover_155997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_155997 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_155997)
  decide +kernel
#print axioms cover_155997

def state_156011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_156011 : String := "4142430A074344404142060505064041420905050A44400707404142434405050705054142074305050742074344070907"
theorem cover_156011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156011 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_156011)
  decide +kernel
#print axioms cover_156011

def state_156060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_156060 : String := "41420A4344060A440741420740430A07070707"
theorem cover_156060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156060 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_156060)
  decide +kernel
#print axioms cover_156060

def state_156079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_156079 : String := "4208430A07"
theorem cover_156079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_156079)
  decide +kernel
#print axioms cover_156079

def state_156084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
def hex_156084 : String := "41420A4306440641420A40430644060A060A0A"
theorem cover_156084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156084 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_156084)
  decide +kernel
#print axioms cover_156084

def state_156103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
def hex_156103 : String := "40414209430A444041420943094440414209050541420A4405050A0909410A0A0A090A"
theorem cover_156103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156103 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 35) (hex := hex_156103)
  decide +kernel
#print axioms cover_156103

def state_156139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_156139 : String := "07"
theorem cover_156139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156139 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_156139)
  decide +kernel
#print axioms cover_156139

def state_156141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_156141 : String := "41424344404142060706070907434440414243440706064344400707400641060607074142074344074142070807070740414206060641420A430806070707"
theorem cover_156141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156141 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_156141)
  decide +kernel
#print axioms cover_156141

def state_156204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
def hex_156204 : String := "41420A434441420740070A070A0707"
theorem cover_156204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_156204)
  decide +kernel
#print axioms cover_156204

def state_156219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
def hex_156219 : String := "4243440A0907430A07"
theorem cover_156219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_156219)
  decide +kernel
#print axioms cover_156219

def state_156230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
def hex_156230 : String := "430A444144400A420A430A4105070A0A0A"
theorem cover_156230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_156230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_156230)
  decide +kernel
#print axioms cover_156230
end Mub6.Numerical.CircleFullPrototype.Forest
