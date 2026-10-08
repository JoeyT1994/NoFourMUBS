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
def state_50012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 27)))
def hex_50012 : String := "4041444243074041074442050A05074307400A0907444205090A4144080705"
theorem cover_50012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50012 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_50012)
  decide +kernel
#print axioms cover_50012

def state_50048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 94 else 54)))
def hex_50048 : String := "40414442430740094107064307404107440607410744060707444206430641400606064243054107050A41440807440505"
theorem cover_50048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50048 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_50048)
  decide +kernel
#print axioms cover_50048

def state_50098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 95 else 54)))
def hex_50098 : String := "4144420943400941094406090909444206434140064406060641090642094341400944420943070907400844050509"
theorem cover_50098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_50098)
  decide +kernel
#print axioms cover_50098

def state_50145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 34 else (if j.val < 4 then 95 else 54)))
def hex_50145 : String := "41444209434041084408070840090842094307094442430506434041440642050605054041440609060A42054340410705054041094405054144050505"
theorem cover_50145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50145 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_50145)
  decide +kernel
#print axioms cover_50145

def state_50206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 35 else (if j.val < 4 then 47 else 54)))
def hex_50206 : String := "43404144424307400A41074408070A074442430A41400A44080A400A44060A0A0A4144080744424308404108440505080942070991"
theorem cover_50206 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_50206 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_50206)
  decide +kernel
#print axioms cover_50206
end Mub6.Numerical.CircleFullPrototype.Forest
