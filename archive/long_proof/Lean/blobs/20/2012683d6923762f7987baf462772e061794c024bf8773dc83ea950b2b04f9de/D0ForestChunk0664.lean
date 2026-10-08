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
def state_1460111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 43 else 57)))
def hex_1460111 : String := "400641430A44060A430909"
theorem cover_1460111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460111 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1460111)
  decide +kernel
#print axioms cover_1460111

def state_1460122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1460122 : String := "43440909440909"
theorem cover_1460122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460122 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1460122)
  decide +kernel
#print axioms cover_1460122

def state_1460129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 21 else 28)))
def hex_1460129 : String := "40064143440607440642060609"
theorem cover_1460129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_1460129)
  decide +kernel
#print axioms cover_1460129

def state_1460142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 29)))
def hex_1460142 : String := "4240410A0541430A444240410A05410A430544420505050A0543054409054005410A05"
theorem cover_1460142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460142 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 35) (hex := hex_1460142)
  decide +kernel
#print axioms cover_1460142

def state_1460177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1460177 : String := "4309440909"
theorem cover_1460177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460177 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1460177)
  decide +kernel
#print axioms cover_1460177

def state_1460182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 15)))
def hex_1460182 : String := "40054143054244400505050505"
theorem cover_1460182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460182 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1460182)
  decide +kernel
#print axioms cover_1460182

def state_1460195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 7)))
def hex_1460195 : String := "44400941430A4244060A09090A"
theorem cover_1460195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460195 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1460195)
  decide +kernel
#print axioms cover_1460195

def state_1460211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1460211 : String := "4143090709"
theorem cover_1460211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460211 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1460211)
  decide +kernel
#print axioms cover_1460211

def state_1460221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1460221 : String := "4143060606"
theorem cover_1460221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460221 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1460221)
  decide +kernel
#print axioms cover_1460221

def state_1460229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 56)))
def hex_1460229 : String := "42400641060606"
theorem cover_1460229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460229 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460229)
  decide +kernel
#print axioms cover_1460229

def state_1460238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1460238 : String := "4143060609"
theorem cover_1460238 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460238 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1460238)
  decide +kernel
#print axioms cover_1460238

def state_1460244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1460244 : String := "434442860642864006414344060A4406428606434406428605440642860644424006430606064240074386074006434144064286064406428606410706"
theorem cover_1460244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460244 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1460244)
  decide +kernel
#print axioms cover_1460244

def state_1460305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1460305 : String := "43444240064106060642400941860909440A4240070A09"
theorem cover_1460305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460305 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 23) (hex := hex_1460305)
  decide +kernel
#print axioms cover_1460305

def state_1460328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1460328 : String := "400641430606430606"
theorem cover_1460328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460328 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1460328)
  decide +kernel
#print axioms cover_1460328

def state_1460337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
def hex_1460337 : String := "4406424007434107070740064341060607"
theorem cover_1460337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460337 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_1460337)
  decide +kernel
#print axioms cover_1460337

def state_1460354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1460354 : String := "43440609440609"
theorem cover_1460354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1460354)
  decide +kernel
#print axioms cover_1460354

def state_1460361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
def hex_1460361 : String := "40064143060609"
theorem cover_1460361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460361)
  decide +kernel
#print axioms cover_1460361

def state_1460370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
def hex_1460370 : String := "41434409050709"
theorem cover_1460370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460370 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1460370)
  decide +kernel
#print axioms cover_1460370
end Mub6.Numerical.CircleFullD0.Forest
