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
def state_1542044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 22)))
def hex_1542044 : String := "4044434142094044080908424005060609434109420940440505060909"
theorem cover_1542044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 29) (hex := hex_1542044)
  decide +kernel
#print axioms cover_1542044

def state_1542075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 44)))
def hex_1542075 : String := "43414240440843070906404408070606414209404443414208404408070808094341074209400706090942400506404443050543050506"
theorem cover_1542075 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542075 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 55) (hex := hex_1542075)
  decide +kernel
#print axioms cover_1542075

def state_1542130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 45)))
def hex_1542130 : String := "434107424006060641094209404443050543050509"
theorem cover_1542130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542130 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1542130)
  decide +kernel
#print axioms cover_1542130

def state_1542151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 22)))
def hex_1542151 : String := "4408430609"
theorem cover_1542151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542151 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1542151)
  decide +kernel
#print axioms cover_1542151

def state_1542156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 22)))
def hex_1542156 : String := "4240444305054305050640440643060506"
theorem cover_1542156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542156 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1542156)
  decide +kernel
#print axioms cover_1542156

def state_1542173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 23)))
def hex_1542173 : String := "43410706414209444043070907074244400506094440430605064043050506"
theorem cover_1542173 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542173 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 31) (hex := hex_1542173)
  decide +kernel
#print axioms cover_1542173

def state_1542206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 22)))
def hex_1542206 : String := "06"
theorem cover_1542206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542206 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1542206)
  decide +kernel
#print axioms cover_1542206

def state_1542212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 38 else 44)))
def hex_1542212 : String := "414042440607060606"
theorem cover_1542212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542212 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1542212)
  decide +kernel
#print axioms cover_1542212

def state_1542224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 100 else (if j.val < 4 then 39 else 44)))
def hex_1542224 : String := "44434140420707060641404209444308080709404244050544084306050643074107404209444307050709"
theorem cover_1542224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1542224)
  decide +kernel
#print axioms cover_1542224

def state_1542267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 101 else (if j.val < 4 then 39 else 44)))
def hex_1542267 : String := "4443410706414042444307410708070707404244060A060607"
theorem cover_1542267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542267 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_1542267)
  decide +kernel
#print axioms cover_1542267

def state_1542292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 44)))
def hex_1542292 : String := "42440807440607"
theorem cover_1542292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542292 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1542292)
  decide +kernel
#print axioms cover_1542292
end Mub6.Numerical.CircleFullD0.Forest
