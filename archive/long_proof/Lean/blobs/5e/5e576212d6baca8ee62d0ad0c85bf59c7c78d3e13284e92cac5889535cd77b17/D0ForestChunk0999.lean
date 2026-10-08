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
def state_1540130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 39 else 87)))
def hex_1540130 : String := "4341070A414042060A424443070907074042440A0A0A4244430841400A0808430741070A440A07"
theorem cover_1540130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1540130)
  decide +kernel
#print axioms cover_1540130

def state_1540171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 42)))
def hex_1540171 : String := "4140090509"
theorem cover_1540171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540171 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1540171)
  decide +kernel
#print axioms cover_1540171

def state_1540177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 42)))
def hex_1540177 : String := "404244430A41400605400942440A0A09430541054006420A054409430505424443054105404208440805084305410540424405050505440505"
theorem cover_1540177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_1540177)
  decide +kernel
#print axioms cover_1540177

def state_1540234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 42)))
def hex_1540234 : String := "404244094309410A0909424408430A4140420A0A08400A08440943094140090509"
theorem cover_1540234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540234 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1540234)
  decide +kernel
#print axioms cover_1540234

def state_1540267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 43)))
def hex_1540267 : String := "4341050A41404244430506060542440505054042440A0A0A4244430A4140420A0A4244080505400A420A0A43074107400A0A4443054105090A"
theorem cover_1540267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1540267)
  decide +kernel
#print axioms cover_1540267

def state_1540325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 10)))
def hex_1540325 : String := "44084143424044050505054209404441054305090909430842404408430809084044084341420840440805050841094209404408090808"
theorem cover_1540325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540325 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1540325)
  decide +kernel
#print axioms cover_1540325
end Mub6.Numerical.CircleFullD0.Forest
