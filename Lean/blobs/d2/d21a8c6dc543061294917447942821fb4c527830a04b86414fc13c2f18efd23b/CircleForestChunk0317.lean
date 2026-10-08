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
def state_151507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 93) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
def hex_151507 : String := "424344060A4407404142074305050707434405054405400541424305050505"
theorem cover_151507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151507 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_151507)
  decide +kernel
#print axioms cover_151507

def state_151539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
def hex_151539 : String := "41424443084041428D08420905410842444308404108050708080808424443094005414209050509440505"
theorem cover_151539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_151539)
  decide +kernel
#print axioms cover_151539

def state_151582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 55)))
def hex_151582 : String := "4142444308404108420A0841080A08084244430A4041420A08070A0A08"
theorem cover_151582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_151582)
  decide +kernel
#print axioms cover_151582

def state_151613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 54)))
def hex_151613 : String := "41424344074041428D0A07414207434407404207050807070743440A400542410A05050A4207430505"
theorem cover_151613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151613 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_151613)
  decide +kernel
#print axioms cover_151613

def state_151654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 54)))
def hex_151654 : String := "414243440740414207090741090707434409404241090708090907"
theorem cover_151654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151654 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_151654)
  decide +kernel
#print axioms cover_151654

def state_151682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 46) else (if j.val < 3 then 46 else (if j.val < 4 then 55 else 55)))
def hex_151682 : String := "414243444041060641428D0842074308060606430806424344070606430505"
theorem cover_151682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_151682 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_151682)
  decide +kernel
#print axioms cover_151682
end Mub6.Numerical.CircleFullPrototype.Forest
