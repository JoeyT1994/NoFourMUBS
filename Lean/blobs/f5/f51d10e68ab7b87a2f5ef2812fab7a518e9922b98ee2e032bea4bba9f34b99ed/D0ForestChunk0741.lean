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
def state_1478724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 116)))
def hex_1478724 : String := "424043414408424043080708080841440A42074007080A43080A40430841080808"
theorem cover_1478724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478724 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1478724)
  decide +kernel
#print axioms cover_1478724

def state_1478760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 68 else (if j.val < 4 then 182 else 117)))
def hex_1478760 : String := "4144424043410944070507094043084107070842404305070940050944424043410808074308080842400543410505414407050505"
theorem cover_1478760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478760 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1478760)
  decide +kernel
#print axioms cover_1478760

def state_1478813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 68 else (if j.val < 4 then 183 else 117)))
def hex_1478813 : String := "414442074007094207400709440A420740074341050507"
theorem cover_1478813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478813 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1478813)
  decide +kernel
#print axioms cover_1478813

def state_1478836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 195 else 88) else (if j.val < 3 then 68 else (if j.val < 4 then 91 else 117)))
def hex_1478836 : String := "434109440842060841090A"
theorem cover_1478836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478836 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1478836)
  decide +kernel
#print axioms cover_1478836

def state_1478847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 69 else (if j.val < 4 then 91 else 117)))
def hex_1478847 : String := "40434144080544080541444240434107050708084240054305070544084240054305050543084144080908"
theorem cover_1478847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478847 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1478847)
  decide +kernel
#print axioms cover_1478847

def state_1478890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 89) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
def hex_1478890 : String := "44420A0842404341440A4240050A050A0A0A404308414408050808"
theorem cover_1478890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478890 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1478890)
  decide +kernel
#print axioms cover_1478890

def state_1478917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 45 else 58)))
def hex_1478917 : String := "404341440605094144064240054305050509430841440842404308410808080808"
theorem cover_1478917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478917 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 33) (hex := hex_1478917)
  decide +kernel
#print axioms cover_1478917

def state_1478952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 59)))
def hex_1478952 : String := "434105054144424005430507050505"
theorem cover_1478952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478952 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1478952)
  decide +kernel
#print axioms cover_1478952
end Mub6.Numerical.CircleFullD0.Forest
