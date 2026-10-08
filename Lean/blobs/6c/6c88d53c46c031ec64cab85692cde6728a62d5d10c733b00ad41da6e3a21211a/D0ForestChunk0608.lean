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
def state_1334688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
def hex_1334688 : String := "4041424344064041424306440640414243060A0606060606064440410A06064041420A0A4243060A43060A0A4306440640410A06060606"
theorem cover_1334688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334688 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 55) (hex := hex_1334688)
  decide +kernel
#print axioms cover_1334688

def state_1334747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 25)))
def hex_1334747 : String := "44404142430744404107424306090606070742430644064041070506060607"
theorem cover_1334747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334747 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 31) (hex := hex_1334747)
  decide +kernel
#print axioms cover_1334747

def state_1334781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
def hex_1334781 : String := "42434440410942094344060709090909434440410A420A0A07070A"
theorem cover_1334781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334781 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1334781)
  decide +kernel
#print axioms cover_1334781

def state_1334809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 60 else (if j.val < 4 then 47 else 50)))
def hex_1334809 : String := "4344404142054306440605050640050944404109050909"
theorem cover_1334809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334809 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1334809)
  decide +kernel
#print axioms cover_1334809

def state_1334832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 61 else (if j.val < 4 then 47 else 50)))
def hex_1334832 : String := "4344404142060606064041424307094306440607420506064440410A080A4041420943440A090942054344064005060909"
theorem cover_1334832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1334832)
  decide +kernel
#print axioms cover_1334832

def state_1334881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 53 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 50)))
def hex_1334881 : String := "4109420908"
theorem cover_1334881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334881 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1334881)
  decide +kernel
#print axioms cover_1334881

def state_1334886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 51)))
def hex_1334886 : String := "4041094209434440410742054306444005060507070907"
theorem cover_1334886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334886 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 23) (hex := hex_1334886)
  decide +kernel
#print axioms cover_1334886

def state_1334910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 46 else 25)))
def hex_1334910 : String := "44404105060607"
theorem cover_1334910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1334910)
  decide +kernel
#print axioms cover_1334910
end Mub6.Numerical.CircleFullD0.Forest
