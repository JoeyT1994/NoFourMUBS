import FourierPilotCircleTree004888
import FourierPilotCircleTree004889
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004887
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, false, true, true]
def state : State := ![45, 46, 40, 52, 61]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree004888.state FourierPilotCircleTree004889.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004888.covered FourierPilotCircleTree004889.covered
#print axioms covered
end FourierPilotCircleTree004887
