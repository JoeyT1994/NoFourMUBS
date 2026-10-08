import FourierPilotCircleTree000841
import FourierPilotCircleTree000842
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000840
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![45, 46, 41, 52, 30]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000841.state FourierPilotCircleTree000842.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000841.covered FourierPilotCircleTree000842.covered
#print axioms covered
end FourierPilotCircleTree000840
