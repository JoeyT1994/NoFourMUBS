import AdaptiveCircleTree

import FourierPilotProofBatch0001

/- Preserved declarations from candidate module FourierPilotCircleTree003909. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003909
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![111, 80, 32, 69, 61]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)))))) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩)))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003909


/- Preserved declarations from candidate module FourierPilotCircleTree003910. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003910
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![111, 81, 32, 34, 61]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨5, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨5, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003910


/- Preserved declarations from candidate module FourierPilotCircleTree003911. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003911
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 40, 33, 34, 61]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003911


/- Preserved declarations from candidate module FourierPilotCircleTree003912. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003912
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 40, 16, 35, 30]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003912


/- Preserved declarations from candidate module FourierPilotCircleTree003913. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003913
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![55, 41, 16, 17, 30]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003913


/- Preserved declarations from candidate module FourierPilotCircleTree003914. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003914
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![27, 20, 16, 17, 31]
def tree : Tree 48 := (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)))) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.reject ⟨5, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩))))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)))) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨3, by decide⟩))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨4, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩)) (.reject ⟨4, by decide⟩)))) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))))) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨5, by decide⟩)) (.reject ⟨5, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))))))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩))))) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩))))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩))))))) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))))) (.reject ⟨2, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨2, by decide⟩))))) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003914


/- Preserved declarations from candidate module FourierPilotCircleTree003915. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003915
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![27, 20, 17, 8, 15]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003915


/- Preserved declarations from candidate module FourierPilotCircleTree003916. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003916
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![27, 21, 8, 8, 15]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003916


/- Preserved declarations from candidate module FourierPilotCircleTree003917. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003917
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 10, 8, 9, 7]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003917


/- Preserved declarations from candidate module FourierPilotCircleTree003918. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003918
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 10, 9, 4, 7]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003918


/- Preserved declarations from candidate module FourierPilotCircleTree003919. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003919
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![13, 11, 4, 4, 7]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003919


/- Preserved declarations from candidate module FourierPilotCircleTree003920. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003920
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![6, 5, 4, 5, 3]
def tree : Tree 48 := (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))) (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003920


/- Preserved declarations from candidate module FourierPilotCircleTree003921. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003921
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![6, 5, 5, 2, 3]
def tree : Tree 48 := (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.reject ⟨1, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003921


/- Preserved declarations from candidate module FourierPilotCircleTree003923. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003923
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 4, 2, 2, 3]
def tree : Tree 48 := (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩))) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩))) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨4, by decide⟩)))))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨0, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))))) (.reject ⟨0, by decide⟩))))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)))) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨2, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨3, by decide⟩)) (.reject ⟨3, by decide⟩)))) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩)))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨2, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨3, by decide⟩)))))) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨3, by decide⟩)))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩)) (.reject ⟨1, by decide⟩)) (.reject ⟨1, by decide⟩))) (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨4, by decide⟩))) (.reject ⟨4, by decide⟩)))))))) (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨3, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))))))))) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨4, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩)) (.reject ⟨2, by decide⟩))) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)))) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨5, by decide⟩))) (.reject ⟨2, by decide⟩)) (.reject ⟨3, by decide⟩)) (.split ⟨4, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨2, by decide⟩)) (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)))) (.reject ⟨2, by decide⟩))))) (.split ⟨1, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.reject ⟨0, by decide⟩))) (.reject ⟨3, by decide⟩)))))) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨3, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)))) (.reject ⟨3, by decide⟩))))) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩)) (.split ⟨2, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨4, by decide⟩) (.split ⟨3, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨4, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨2, by decide⟩ (.reject ⟨4, by decide⟩) (.reject ⟨1, by decide⟩))))) (.reject ⟨0, by decide⟩)) (.reject ⟨4, by decide⟩))) (.split ⟨4, by decide⟩ (.split ⟨2, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨0, by decide⟩))) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨1, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨2, by decide⟩)) (.split ⟨1, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨2, by decide⟩))))) (.split ⟨3, by decide⟩ (.reject ⟨1, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨1, by decide⟩ (.reject ⟨2, by decide⟩) (.reject ⟨1, by decide⟩)) (.reject ⟨4, by decide⟩)))))))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003923


/- Preserved declarations from candidate module FourierPilotCircleTree003927. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003927
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![7, 5, 4, 4, 6]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨0, by decide⟩ (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨5, by decide⟩))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003927


/- Preserved declarations from candidate module FourierPilotCircleTree003933. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003933
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![14, 10, 8, 8, 14]
def tree : Tree 48 := (.split ⟨1, by decide⟩ (.split ⟨0, by decide⟩ (.split ⟨4, by decide⟩ (.reject ⟨0, by decide⟩) (.split ⟨2, by decide⟩ (.split ⟨3, by decide⟩ (.reject ⟨0, by decide⟩) (.reject ⟨5, by decide⟩)) (.reject ⟨0, by decide⟩))) (.reject ⟨0, by decide⟩)) (.split ⟨0, by decide⟩ (.reject ⟨5, by decide⟩) (.reject ⟨0, by decide⟩)))
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  apply Adaptive.covered_of_treeJoined tree image_sound term_sound
  decide +kernel
#print axioms covered
end FourierPilotCircleTree003933
