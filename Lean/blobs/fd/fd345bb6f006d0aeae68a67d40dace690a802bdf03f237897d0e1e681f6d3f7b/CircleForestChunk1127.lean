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
def state_1571012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
def hex_1571012 : String := "4243090943444008414209430A4440074142080707074208070944400841420943444008414209430909090944400841D0420843080809420843080809"
theorem cover_1571012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 61) (hex := hex_1571012)
  decide +kernel
#print axioms cover_1571012

def state_1571073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
def hex_1571073 : String := "42084308440808"
theorem cover_1571073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1571073)
  decide +kernel
#print axioms cover_1571073

def state_1571082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 46 else (if j.val < 4 then 25 else 26)))
def hex_1571082 : String := "4305440505"
theorem cover_1571082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571082 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1571082)
  decide +kernel
#print axioms cover_1571082

def state_1571087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 25 else 26)))
def hex_1571087 : String := "43444041420543054405050505400905444041424305094344404142054305D0050509444041D0420543090941D0050942054305444009050505400905"
theorem cover_1571087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1571087)
  decide +kernel
#print axioms cover_1571087

def state_1571148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 26)))
def hex_1571148 : String := "42054305440505"
theorem cover_1571148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571148 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1571148)
  decide +kernel
#print axioms cover_1571148

def state_1571155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 27)))
def hex_1571155 : String := "400909"
theorem cover_1571155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1571155)
  decide +kernel
#print axioms cover_1571155

def state_1571158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 13)))
def hex_1571158 : String := "424305054344050544400805400805"
theorem cover_1571158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1571158)
  decide +kernel
#print axioms cover_1571158

def state_1571175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_1571175 : String := "414208440843080808"
theorem cover_1571175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1571175)
  decide +kernel
#print axioms cover_1571175

def state_1571186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 12)))
def hex_1571186 : String := "440A434008410A42050A0A"
theorem cover_1571186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571186 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1571186)
  decide +kernel
#print axioms cover_1571186

def state_1571198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 24)))
def hex_1571198 : String := "434041420844094340084109060A084142440643060744064306400A06420606400A0A"
theorem cover_1571198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571198 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1571198)
  decide +kernel
#print axioms cover_1571198

def state_1571237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 46 else (if j.val < 4 then 26 else 25)))
def hex_1571237 : String := "440A0A"
theorem cover_1571237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1571237)
  decide +kernel
#print axioms cover_1571237

def state_1571241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 50)))
def hex_1571241 : String := "43400841420A4443090543400841420809080A42084408080A"
theorem cover_1571241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571241 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_1571241)
  decide +kernel
#print axioms cover_1571241
end Mub6.Numerical.CircleFullD0.Forest
