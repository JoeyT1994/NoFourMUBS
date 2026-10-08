import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1586741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_1586741 : String := "4006410643424440410606414342440A06060643420844400641430706080606064440064106434244070606060606"
theorem cover_1586741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586741 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 47) (hex := hex_1586741)
  decide +kernel
#print axioms cover_1586741

def state_1586788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
def hex_1586788 : String := "444005410543440542400541054344050605050506"
theorem cover_1586788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 21) (hex := hex_1586788)
  decide +kernel
#print axioms cover_1586788

def state_1586809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
def hex_1586809 : String := "06"
theorem cover_1586809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1586809)
  decide +kernel
#print axioms cover_1586809

def state_1586810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
def hex_1586810 : String := "4344434409074409060606"
theorem cover_1586810 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586810 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1586810)
  decide +kernel
#print axioms cover_1586810

def state_1586827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
def hex_1586827 : String := "444008420843074441060607400742430541070507"
theorem cover_1586827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1586827)
  decide +kernel
#print axioms cover_1586827

def state_1586849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
def hex_1586849 : String := "4008424408414308080844414340084406420607400844420809420840074109070841434007424407070740074244080707430708"
theorem cover_1586849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586849 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1586849)
  decide +kernel
#print axioms cover_1586849

def state_1586902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
def hex_1586902 : String := "404208074241434408054408080841430744070707"
theorem cover_1586902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1586902)
  decide +kernel
#print axioms cover_1586902

def state_1586923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1586923 : String := "4344400743074409070744404409074441424309090942430740070907414207070707"
theorem cover_1586923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586923 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1586923)
  decide +kernel
#print axioms cover_1586923

def state_1586958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
def hex_1586958 : String := "42430844080843074440074144424307080707444207070707"
theorem cover_1586958 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586958 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1586958)
  decide +kernel
#print axioms cover_1586958

def state_1586983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_1586983 : String := "4142430740074442414307070507060707"
theorem cover_1586983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1586983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_1586983)
  decide +kernel
#print axioms cover_1586983
end Mub6.Numerical.CircleFullD0.Forest
