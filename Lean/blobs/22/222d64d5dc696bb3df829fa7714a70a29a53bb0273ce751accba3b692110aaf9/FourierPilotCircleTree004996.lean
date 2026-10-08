import FourierPilotCircleTree004997
import FourierPilotCircleTree005000
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004996
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![25, 24, 27, 21, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree004997.state FourierPilotCircleTree005000.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004997.covered FourierPilotCircleTree005000.covered
#print axioms covered
end FourierPilotCircleTree004996
