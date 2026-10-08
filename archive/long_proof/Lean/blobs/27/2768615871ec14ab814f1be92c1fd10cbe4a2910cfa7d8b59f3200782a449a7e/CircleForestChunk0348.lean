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
def state_1020892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 123) else (if j.val < 3 then 74 else (if j.val < 4 then 103 else 201)))
def hex_1020892 : String := "43424105404443054205084305050541074044070744084307074241400A05400A4409054140074443070907400A4409434205070A"
theorem cover_1020892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020892 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1020892)
  decide +kernel
#print axioms cover_1020892

def state_1020945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 75 else (if j.val < 4 then 103 else 100)))
def hex_1020945 : String := "414007444307070740440807444308424140070908084307424107400744090707"
theorem cover_1020945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1020945)
  decide +kernel
#print axioms cover_1020945

def state_1020978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 101)))
def hex_1020978 : String := "4342410740074443054205070707424140074443050707404443070A074443420507424105400A05410740074443070A074342050742050741074007440707"
theorem cover_1020978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020978 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1020978)
  decide +kernel
#print axioms cover_1020978

def state_1021043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 100)))
def hex_1021043 : String := "424140440A0505404409430542050A094106400806"
theorem cover_1021043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1021043)
  decide +kernel
#print axioms cover_1021043

def state_1021064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 103 else 100)))
def hex_1021064 : String := "4241404443420509420509430505440505404409434205410509420541404409050509094140440606064044094342410609064241060906440606"
theorem cover_1021064 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021064 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1021064)
  decide +kernel
#print axioms cover_1021064

def state_1021124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 102 else 101)))
def hex_1021124 : String := "424105404405050541064044070706"
theorem cover_1021124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1021124 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_1021124)
  decide +kernel
#print axioms cover_1021124
end Mub6.Numerical.CircleFullD0.Forest
