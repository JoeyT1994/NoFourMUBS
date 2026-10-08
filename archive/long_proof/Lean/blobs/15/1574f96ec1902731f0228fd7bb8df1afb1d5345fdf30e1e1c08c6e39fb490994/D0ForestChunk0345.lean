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
def state_1020161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1020161 : String := "44430909434241404405050506414044084308420508440905400809424140060506414044430909434205414007054006090A44094305094044060609"
theorem cover_1020161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020161 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1020161)
  decide +kernel
#print axioms cover_1020161

def state_1020222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 61) else (if j.val < 3 then 36 else (if j.val < 4 then 51 else 49)))
def hex_1020222 : String := "4409430909"
theorem cover_1020222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020222 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1020222)
  decide +kernel
#print axioms cover_1020222

def state_1020230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 98)))
def hex_1020230 : String := "434241400806080842414044430809430707440943060640440843080909410608"
theorem cover_1020230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020230 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1020230)
  decide +kernel
#print axioms cover_1020230

def state_1020263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 99)))
def hex_1020263 : String := "434241074007444307090707424140074443060607404443074241070A0707444309094342050642410505074106400706"
theorem cover_1020263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1020263)
  decide +kernel
#print axioms cover_1020263

def state_1020312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
def hex_1020312 : String := "44430909430A4241064044094305060606"
theorem cover_1020312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020312 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_1020312)
  decide +kernel
#print axioms cover_1020312

def state_1020329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 61) else (if j.val < 3 then 37 else (if j.val < 4 then 51 else 49)))
def hex_1020329 : String := "40444308420908430842414044430809434241070807420A0A44094342090942090940440843080A094140084408430742090608440943420908420909"
theorem cover_1020329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1020329 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1020329)
  decide +kernel
#print axioms cover_1020329
end Mub6.Numerical.CircleFullD0.Forest
