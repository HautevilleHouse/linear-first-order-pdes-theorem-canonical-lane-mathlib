import canonicalLaneMathlib.AdmissibleClass

/-! 
# Linear Transport Equation Package
-/

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure LinearTransportEquationPackage (A : AdmissibleClass) where
  velocityFieldGiven : Prop
  initialConditionGiven : Prop
  solutionByCharacteristics : Prop
  wellPosedness : Prop

structure LinearTransportEquationEvidence {A : AdmissibleClass} (T : LinearTransportEquationPackage A) where
  velocityFieldGivenClosed : T.velocityFieldGiven
  initialConditionGivenClosed : T.initialConditionGiven
  solutionByCharacteristicsClosed : T.solutionByCharacteristics
  wellPosednessClosed : T.wellPosedness

def LinearTransportEquationClosed {A : AdmissibleClass} (T : LinearTransportEquationPackage A) : Prop :=
  T.velocityFieldGiven ∧ T.initialConditionGiven ∧ T.solutionByCharacteristics ∧ T.wellPosedness

theorem linear_transport_equation_closed_from_evidence {A : AdmissibleClass} (T : LinearTransportEquationPackage A) (E : LinearTransportEquationEvidence T) : LinearTransportEquationClosed T := by
  exact And.intro E.velocityFieldGivenClosed (And.intro E.initialConditionGivenClosed (And.intro E.solutionByCharacteristicsClosed E.wellPosednessClosed))

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse