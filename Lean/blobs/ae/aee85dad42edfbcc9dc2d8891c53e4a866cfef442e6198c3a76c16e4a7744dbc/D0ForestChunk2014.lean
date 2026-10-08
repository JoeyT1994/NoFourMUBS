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
def state_2563858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 55 else 46)))
def hex_2563858 : String := "41444043080608404308060844404307074308420741080740430842074406054308424441080741080744410840070809"
theorem cover_2563858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2563858)
  decide +kernel
#print axioms cover_2563858

def state_2563907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 47)))
def hex_2563907 : String := "4043420808420544410A0505430842444140430842080808400543084244070544080541400508054441404308090840430505430842440805094109400508"
theorem cover_2563907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563907 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_2563907)
  decide +kernel
#print axioms cover_2563907

def state_2563971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 23)))
def hex_2563971 : String := "444006430806400909"
theorem cover_2563971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563971 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_2563971)
  decide +kernel
#print axioms cover_2563971

def state_2563981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
def hex_2563981 : String := "4043424108444006084008084106444006080A0643084241444006080944404308064308424106440606064043080643080941064440060909"
theorem cover_2563981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2563981 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_2563981)
  decide +kernel
#print axioms cover_2563981

def state_2564038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 47)))
def hex_2564038 : String := "40434208090A4308424441094009090909"
theorem cover_2564038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564038 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_2564038)
  decide +kernel
#print axioms cover_2564038

def state_2564057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 22)))
def hex_2564057 : String := "4342074144074307070707"
theorem cover_2564057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564057 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2564057)
  decide +kernel
#print axioms cover_2564057

def state_2564069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 22)))
def hex_2564069 : String := "4241440840070807410844400708400708"
theorem cover_2564069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564069 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_2564069)
  decide +kernel
#print axioms cover_2564069

def state_2564087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 22)))
def hex_2564087 : String := "4144074007434207070707"
theorem cover_2564087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2564087 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2564087)
  decide +kernel
#print axioms cover_2564087
end Mub6.Numerical.CircleFullD0.Forest
