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
def state_1528736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 93 else (if j.val < 4 then 35 else 44)))
def hex_1528736 : String := "444143400A0A400A424441430A050541430505050A430A0541430A400A424405050A430A05"
theorem cover_1528736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528736 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1528736)
  decide +kernel
#print axioms cover_1528736

def state_1528773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 45)))
def hex_1528773 : String := "414307400842080743400842444107430705070740084244410805054441070507"
theorem cover_1528773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528773 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1528773)
  decide +kernel
#print axioms cover_1528773

def state_1528806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 47 else (if j.val < 4 then 17 else 22)))
def hex_1528806 : String := "44414307400A42440A0707430A400A0A41070A"
theorem cover_1528806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1528806)
  decide +kernel
#print axioms cover_1528806

def state_1528828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
def hex_1528828 : String := "43404244410743074042440807070707070740424409094441074307404209070907420907"
theorem cover_1528828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528828 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 37) (hex := hex_1528828)
  decide +kernel
#print axioms cover_1528828

def state_1528866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 44)))
def hex_1528866 : String := "40424441080641070644080706"
theorem cover_1528866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528866 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1528866)
  decide +kernel
#print axioms cover_1528866

def state_1528881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 92 else (if j.val < 4 then 35 else 44)))
def hex_1528881 : String := "444143404244080944084109080809434006064005084143404209070909434042050506400509"
theorem cover_1528881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1528881)
  decide +kernel
#print axioms cover_1528881

def state_1528920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 93 else (if j.val < 4 then 35 else 44)))
def hex_1528920 : String := "4441434042440841070608084042440809440841074307090843064042054408050641430740420907074306404205440505420606"
theorem cover_1528920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528920 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_1528920)
  decide +kernel
#print axioms cover_1528920

def state_1528973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
def hex_1528973 : String := "424408094408410706"
theorem cover_1528973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528973 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1528973)
  decide +kernel
#print axioms cover_1528973
end Mub6.Numerical.CircleFullD0.Forest
