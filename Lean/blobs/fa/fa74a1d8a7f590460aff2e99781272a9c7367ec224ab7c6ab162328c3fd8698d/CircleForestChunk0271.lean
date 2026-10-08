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
def state_140456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
def hex_140456 : String := "4143440805444042084143080908420841430844060508094308444008084009420507"
theorem cover_140456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140456 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_140456)
  decide +kernel
#print axioms cover_140456

def state_140493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
def hex_140493 : String := "444008084042080A420507"
theorem cover_140493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_140493)
  decide +kernel
#print axioms cover_140493

def state_140506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
def hex_140506 : String := "4241430844080908414308440840414308090841430844420808090808"
theorem cover_140506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140506 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_140506)
  decide +kernel
#print axioms cover_140506

def state_140536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
def hex_140536 : String := "41430844084042084143050908420541050708"
theorem cover_140536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_140536)
  decide +kernel
#print axioms cover_140536

def state_140555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 14)))
def hex_140555 : String := "41430844400808404143440808444208084209400A410A0843084408084143440842050844420608420540414305050841050743074408084308440808"
theorem cover_140555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_140555)
  decide +kernel
#print axioms cover_140555

def state_140617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
def hex_140617 : String := "420941430A09430606"
theorem cover_140617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_140617)
  decide +kernel
#print axioms cover_140617

def state_140627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
def hex_140627 : String := "4143050543074440090709"
theorem cover_140627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140627 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_140627)
  decide +kernel
#print axioms cover_140627

def state_140639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_140639 : String := "4344400A074005054440414342050A420544400941054305050543420808420944400608064143050543074205440707400905"
theorem cover_140639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_140639)
  decide +kernel
#print axioms cover_140639

def state_140690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 27 else (if j.val < 4 then 9 else 15)))
def hex_140690 : String := "430744404307414208060607400607"
theorem cover_140690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140690 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_140690)
  decide +kernel
#print axioms cover_140690
end Mub6.Numerical.CircleFullPrototype.Forest
