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
def state_1334193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 103)))
def hex_1334193 : String := "414243400544414205DB0505400544414205DB0505DB05"
theorem cover_1334193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334193 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1334193)
  decide +kernel
#print axioms cover_1334193

def state_1334216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 39) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 51)))
def hex_1334216 : String := "05"
theorem cover_1334216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334216 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1334216)
  decide +kernel
#print axioms cover_1334216

def state_1334218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 13)))
def hex_1334218 : String := "42400843070808"
theorem cover_1334218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334218 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1334218)
  decide +kernel
#print axioms cover_1334218

def state_1334226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 13)))
def hex_1334226 : String := "4005430A05"
theorem cover_1334226 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334226 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1334226)
  decide +kernel
#print axioms cover_1334226

def state_1334232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 13)))
def hex_1334232 : String := "430A444142050A0505"
theorem cover_1334232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334232 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1334232)
  decide +kernel
#print axioms cover_1334232

def state_1334241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 13)))
def hex_1334241 : String := "430A4441424340080740054441080505434008074008444107420843074008440807074205430A400544414205430A400544414205DB05050505410805"
theorem cover_1334241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334241 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 61) (hex := hex_1334241)
  decide +kernel
#print axioms cover_1334241

def state_1334303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
def hex_1334303 : String := "444107424406404306410706060607"
theorem cover_1334303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334303 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1334303)
  decide +kernel
#print axioms cover_1334303

def state_1334324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 24)))
def hex_1334324 : String := "4241444307090744434042060606404241090541444306094307090642060643074042094107444306090707410744430640424144060706060607"
theorem cover_1334324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334324 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1334324)
  decide +kernel
#print axioms cover_1334324

def state_1334383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 24)))
def hex_1334383 : String := "4241070606"
theorem cover_1334383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334383 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1334383)
  decide +kernel
#print axioms cover_1334383

def state_1334388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 25)))
def hex_1334388 : String := "07"
theorem cover_1334388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334388 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1334388)
  decide +kernel
#print axioms cover_1334388

def state_1334390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
def hex_1334390 : String := "40424109094143440A070943444042410A440A43404206060609410A440643060A0A4042410909410743444042410706060607440A0909440A0909"
theorem cover_1334390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334390 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 59) (hex := hex_1334390)
  decide +kernel
#print axioms cover_1334390
end Mub6.Numerical.CircleFullD0.Forest
