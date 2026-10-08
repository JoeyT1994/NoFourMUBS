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
def state_1551574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 104 else (if j.val < 4 then 41 else 41)))
def hex_1551574 : String := "41434440074207074042410607410644074305064241440A05440743050641054443050705440740060A434407400742074407414305070707"
theorem cover_1551574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1551574)
  decide +kernel
#print axioms cover_1551574

def state_1551631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 58) else (if j.val < 3 then 105 else (if j.val < 4 then 41 else 41)))
def hex_1551631 : String := "41434440420709424143050707410543050740424105440705050544074042060A0A43440740420709424407410543090744090907"
theorem cover_1551631 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551631 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1551631)
  decide +kernel
#print axioms cover_1551631

def state_1551684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
def hex_1551684 : String := "4344094009424309414407400742070607094407400742074143440740074207070707"
theorem cover_1551684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551684 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_1551684)
  decide +kernel
#print axioms cover_1551684

def state_1551721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 40 else 20)))
def hex_1551721 : String := "440909"
theorem cover_1551721 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551721 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1551721)
  decide +kernel
#print axioms cover_1551721

def state_1551724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 53 else (if j.val < 4 then 41 else 20)))
def hex_1551724 : String := "444009424144074309070709404241430944070809094241434409054440070A404241050A050543094407400942434407050743050741430544090509"
theorem cover_1551724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1551724)
  decide +kernel
#print axioms cover_1551724

def state_1551785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 20)))
def hex_1551785 : String := "43094407400942414309070709"
theorem cover_1551785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551785 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1551785)
  decide +kernel
#print axioms cover_1551785

def state_1551799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
def hex_1551799 : String := "4042064405054244410543054006420605410543050505"
theorem cover_1551799 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551799 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_1551799)
  decide +kernel
#print axioms cover_1551799
end Mub6.Numerical.CircleFullD0.Forest
