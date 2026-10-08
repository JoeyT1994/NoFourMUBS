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
def state_135855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 27 else 27)))
def hex_135855 : String := "43444041420843444008080944080642084309084142054344050505420843440809084009414205440505094440080806"
theorem cover_135855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_135855)
  decide +kernel
#print axioms cover_135855

def state_135911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 90 else (if j.val < 4 then 108 else 108)))
def hex_135911 : String := "404142430744080643070A4243090843444007410708070A41424305054307440A074243440809084344404107084107080744084041070941074208430706"
theorem cover_135911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135911 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_135911)
  decide +kernel
#print axioms cover_135911

def state_135974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 90 else (if j.val < 4 then 108 else 109)))
def hex_135974 : String := "40410709410709"
theorem cover_135974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135974 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_135974)
  decide +kernel
#print axioms cover_135974

def state_135981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 90 else (if j.val < 4 then 109 else 54)))
def hex_135981 : String := "4440410A084142080A42080A4006410606"
theorem cover_135981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135981 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_135981)
  decide +kernel
#print axioms cover_135981

def state_135998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 91 else (if j.val < 4 then 54 else 54)))
def hex_135998 : String := "4344400A42410743070A0707440A4006420606"
theorem cover_135998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_135998)
  decide +kernel
#print axioms cover_135998

def state_136018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 90 else (if j.val < 4 then 54 else 54)))
def hex_136018 : String := "4344400941420843440809440809080944084006410606"
theorem cover_136018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136018 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_136018)
  decide +kernel
#print axioms cover_136018

def state_136042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 91 else (if j.val < 4 then 108 else 54)))
def hex_136042 : String := "4440414243090A0A4209054142434440410709414243070807420843070809440A4009410A0943440A070A42430944080943050540094142090709"
theorem cover_136042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_136042)
  decide +kernel
#print axioms cover_136042

def state_136101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 91 else (if j.val < 4 then 109 else 54)))
def hex_136101 : String := "44400A410A42080A40064106420606"
theorem cover_136101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_136101)
  decide +kernel
#print axioms cover_136101
end Mub6.Numerical.CircleFullPrototype.Forest
