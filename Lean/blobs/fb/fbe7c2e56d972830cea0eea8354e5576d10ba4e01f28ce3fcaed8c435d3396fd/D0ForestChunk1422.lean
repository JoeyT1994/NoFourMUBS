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
def state_1642005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 41)))
def hex_1642005 : String := "4143064042064441430608434009050A09064305404205440A0505"
theorem cover_1642005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1642005)
  decide +kernel
#print axioms cover_1642005

def state_1642032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 20)))
def hex_1642032 : String := "42064441060505"
theorem cover_1642032 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642032 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1642032)
  decide +kernel
#print axioms cover_1642032

def state_1642039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 20)))
def hex_1642039 : String := "430540420544414305404205440A0505050505"
theorem cover_1642039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642039 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 19) (hex := hex_1642039)
  decide +kernel
#print axioms cover_1642039

def state_1642060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 20)))
def hex_1642060 : String := "40424441430740424407070742064407054305404205070509444107070742054441430540440705050505"
theorem cover_1642060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642060 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1642060)
  decide +kernel
#print axioms cover_1642060

def state_1642109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 40)))
def hex_1642109 : String := "424441434007080843400742440705074008084109430740094209094441430708430740070809"
theorem cover_1642109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642109 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1642109)
  decide +kernel
#print axioms cover_1642109

def state_1642149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 116 else (if j.val < 4 then 102 else 40)))
def hex_1642149 : String := "4441430640080643054042080806410605"
theorem cover_1642149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642149 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1642149)
  decide +kernel
#print axioms cover_1642149

def state_1642166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 117 else (if j.val < 4 then 102 else 40)))
def hex_1642166 : String := "4441434007064008420808434007054042440808440707424408054408410705414307400906430540424407050705"
theorem cover_1642166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642166 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1642166)
  decide +kernel
#print axioms cover_1642166

def state_1642214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 100) else (if j.val < 3 then 58 else (if j.val < 4 then 103 else 40)))
def hex_1642214 : String := "42440841084340084208080844084108430A08"
theorem cover_1642214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642214 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1642214)
  decide +kernel
#print axioms cover_1642214

def state_1642234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 100) else (if j.val < 3 then 116 else (if j.val < 4 then 103 else 40)))
def hex_1642234 : String := "44410843400808084143400806084340424406054408410605064008420608"
theorem cover_1642234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1642234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 31) (hex := hex_1642234)
  decide +kernel
#print axioms cover_1642234
end Mub6.Numerical.CircleFullD0.Forest
