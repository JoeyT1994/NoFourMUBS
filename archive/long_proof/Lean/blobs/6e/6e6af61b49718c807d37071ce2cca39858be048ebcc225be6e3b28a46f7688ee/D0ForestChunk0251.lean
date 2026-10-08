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
def state_997659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
def hex_997659 : String := "4344060644420806420806"
theorem cover_997659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997659 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_997659)
  decide +kernel
#print axioms cover_997659

def state_997671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 21)))
def hex_997671 : String := "444240434106440A0A41440A06444240430A41090507054240430A440A41080A0A0A43060A064240430644410642404306080606060606"
theorem cover_997671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997671 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_997671)
  decide +kernel
#print axioms cover_997671

def state_997727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 42)))
def hex_997727 : String := "424041434442080908084344424043070707404305090A4208404309090A444207400907084108434407080840414306094344050A4442090542090641060A"
theorem cover_997727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997727 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_997727)
  decide +kernel
#print axioms cover_997727

def state_997790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 43)))
def hex_997790 : String := "42404441084342084009060808084044410643064209060606"
theorem cover_997790 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997790 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_997790)
  decide +kernel
#print axioms cover_997790

def state_997815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
def hex_997815 : String := "41064306440A06"
theorem cover_997815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997815 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_997815)
  decide +kernel
#print axioms cover_997815

def state_997822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 21)))
def hex_997822 : String := "06"
theorem cover_997822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997822 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_997822)
  decide +kernel
#print axioms cover_997822

def state_997825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 27 else 20)))
def hex_997825 : String := "404142084344090908424344074041080707074344074041094207430507410A0744074041080707410807"
theorem cover_997825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997825 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_997825)
  decide +kernel
#print axioms cover_997825

def state_997868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 19 else (if j.val < 4 then 27 else 20)))
def hex_997868 : String := "40414209094243440540090A4409400909430509410A0A"
theorem cover_997868 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997868 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_997868)
  decide +kernel
#print axioms cover_997868
end Mub6.Numerical.CircleFullD0.Forest
