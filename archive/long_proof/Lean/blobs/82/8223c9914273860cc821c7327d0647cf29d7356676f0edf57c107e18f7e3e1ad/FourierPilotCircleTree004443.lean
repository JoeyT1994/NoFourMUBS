import FourierPilotCircleTree004444
import FourierPilotCircleTree004445
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree004443
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, true]
def state : State := ![3, 3, 1, 1, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨2, by decide⟩ FourierPilotCircleTree004444.state FourierPilotCircleTree004445.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree004444.covered FourierPilotCircleTree004445.covered
#print axioms covered
end FourierPilotCircleTree004443
