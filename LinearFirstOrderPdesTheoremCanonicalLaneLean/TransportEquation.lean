import HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean.CauchyProblem

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure TransportEquationPackage {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} (P : CauchyProblemPackage C) where
  advectionField : A.domain → A.domain
  initialData : A.domain → ℝ
  explicitSolutionFormula : (A.domain → ℝ) → (A.domain → ℝ)
  solutionMatchesCauchyData : Prop
  solutionSatisfiesPDE : Prop
  solutionUnique : Prop

structure TransportEquationEvidence {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} {P : CauchyProblemPackage C}
    (T : TransportEquationPackage P) where
  solutionMatchesCauchyDataClosed : T.solutionMatchesCauchyData
  solutionSatisfiesPDEClosed : T.solutionSatisfiesPDE
  solutionUniqueClosed : T.solutionUnique

def TransportEquationClosed {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} {P : CauchyProblemPackage C}
    (T : TransportEquationPackage P) : Prop :=
  T.solutionMatchesCauchyData ∧ T.solutionSatisfiesPDE ∧ T.solutionUnique

theorem transport_equation_closed_from_evidence
    {A : LinearPDEAdmittedObject} {C : CharacteristicCurvePackage A}
    {P : CauchyProblemPackage C} (T : TransportEquationPackage P)
    (E : TransportEquationEvidence T) : TransportEquationClosed T :=
  And.intro E.solutionMatchesCauchyDataClosed
    (And.intro E.solutionSatisfiesPDEClosed E.solutionUniqueClosed)

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse
