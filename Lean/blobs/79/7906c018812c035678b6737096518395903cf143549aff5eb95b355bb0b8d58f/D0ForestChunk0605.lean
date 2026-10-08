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
def state_1333935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 207 else 75) else (if j.val < 3 then 126 else (if j.val < 4 then 191 else 205)))
def hex_1333935 : String := "41424344400A0A4008070ADB4243444041424344064005060ADB4205DB410A0640414205DB05414209DB4205064440410A070A4041090509DB"
theorem cover_1333935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333935 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1333935)
  decide +kernel
#print axioms cover_1333935

def state_1333992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 127 else (if j.val < 4 then 95 else 102)))
def hex_1333992 : String := "4344400906DB44404105070ADB"
theorem cover_1333992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1333992 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1333992)
  decide +kernel
#print axioms cover_1333992

def state_1334005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 103)))
def hex_1334005 : String := "41084243404441084205DB0707404441084205DB0844410842434440410805070709DB4107420507DB"
theorem cover_1334005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 41) (hex := hex_1334005)
  decide +kernel
#print axioms cover_1334005

def state_1334047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 25)))
def hex_1334047 : String := "05"
theorem cover_1334047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334047 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1334047)
  decide +kernel
#print axioms cover_1334047

def state_1334049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 46 else 25)))
def hex_1334049 : String := "4044090A440641420A430640090606"
theorem cover_1334049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334049 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1334049)
  decide +kernel
#print axioms cover_1334049

def state_1334065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 25)))
def hex_1334065 : String := "44074142054309400544070505"
theorem cover_1334065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334065 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1334065)
  decide +kernel
#print axioms cover_1334065

def state_1334079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 31 else (if j.val < 4 then 47 else 50)))
def hex_1334079 : String := "414243440640050644074005084309440740070808"
theorem cover_1334079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334079 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1334079)
  decide +kernel
#print axioms cover_1334079

def state_1334102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 62 else (if j.val < 4 then 47 else 51)))
def hex_1334102 : String := "434005444142054306440605050505"
theorem cover_1334102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334102 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1334102)
  decide +kernel
#print axioms cover_1334102

def state_1334118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 94 else 51)))
def hex_1334118 : String := "4044090A440641420A4306400A0606"
theorem cover_1334118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334118 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1334118)
  decide +kernel
#print axioms cover_1334118

def state_1334134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 51)))
def hex_1334134 : String := "4441424309070905414205430A4005DB05"
theorem cover_1334134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334134 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1334134)
  decide +kernel
#print axioms cover_1334134

def state_1334152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 38) else (if j.val < 3 then 63 else (if j.val < 4 then 95 else 102)))
def hex_1334152 : String := "4142434406404142050905064440070840414205DB0541424344050505DB05434406DB44400706DB08"
theorem cover_1334152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1334152 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_1334152)
  decide +kernel
#print axioms cover_1334152
end Mub6.Numerical.CircleFullD0.Forest
