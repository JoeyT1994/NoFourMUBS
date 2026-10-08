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
def state_75598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 11)))
def hex_75598 : String := "4041424309050542430944400541050705094142430944410540050605094243094440414243090505420709414243090A064243094440070607090909"
theorem cover_75598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75598 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_75598)
  decide +kernel
#print axioms cover_75598

def state_75659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 5)))
def hex_75659 : String := "4440054105084005410542444340054105420A05050505"
theorem cover_75659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75659 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_75659)
  decide +kernel
#print axioms cover_75659

def state_75686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
def hex_75686 : String := "43414244400743070707440807074142070807"
theorem cover_75686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_75686)
  decide +kernel
#print axioms cover_75686

def state_75708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 26) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
def hex_75708 : String := "44434041420744080707414205050540414207080741420944084305070507"
theorem cover_75708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_75708)
  decide +kernel
#print axioms cover_75708

def state_75739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
def hex_75739 : String := "4443400A4142050A05400841424408430508060843400741424405054405050540074142074443400805080707"
theorem cover_75739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75739 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_75739)
  decide +kernel
#print axioms cover_75739

def state_75784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 27) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
def hex_75784 : String := "4207440A07"
theorem cover_75784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75784 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_75784)
  decide +kernel
#print axioms cover_75784

def state_75789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 10)))
def hex_75789 : String := "414244400809074408404307074341420744080707084207440807"
theorem cover_75789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75789 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_75789)
  decide +kernel
#print axioms cover_75789

def state_75816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
def hex_75816 : String := "07"
theorem cover_75816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_75816)
  decide +kernel
#print axioms cover_75816

def state_75817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 5)))
def hex_75817 : String := "44400841424344080707080807"
theorem cover_75817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_75817 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_75817)
  decide +kernel
#print axioms cover_75817
end Mub6.Numerical.CircleFullPrototype.Forest
