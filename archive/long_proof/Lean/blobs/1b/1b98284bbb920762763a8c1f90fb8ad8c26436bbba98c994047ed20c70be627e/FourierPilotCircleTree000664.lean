import FourierPilotCircleTree000665
import FourierPilotCircleTree000682
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000664
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, false, true, false, false]
def state : State := ![2, 2, 3, 3, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000665.state FourierPilotCircleTree000682.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000665.covered FourierPilotCircleTree000682.covered
#print axioms covered
end FourierPilotCircleTree000664
