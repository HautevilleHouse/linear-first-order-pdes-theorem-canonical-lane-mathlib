import HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean.TransportEquation

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure SuperpositionPackage {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} {P : CauchyProblemPackage C}
    (T : TransportEquationPackage P) where
  homogeneousSolutions : Set (A.domain → ℝ)
  linearCombinationClosure : Prop
  particularSolutionPlusHomogeneous : Prop
  generalSolutionCharacterized : Prop

structure SuperpositionEvidence {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} {P : CauchyProblemPackage C}
    {T : TransportEquationPackage P} (S : SuperpositionPackage T) where
  linearCombinationClosureClosed : S.linearCombinationClosure
  particularSolutionPlusHomogeneousClosed : S.particularSolutionPlusHomogeneous
  generalSolutionCharacterizedClosed : S.generalSolutionCharacterized

def SuperpositionClosed {A : LinearPDEAdmittedObject}
    {C : CharacteristicCurvePackage A} {P : CauchyProblemPackage C}
    {T : TransportEquationPackage P} (S : SuperpositionPackage T) : Prop :=
  S.linearCombinationClosure ∧ S.particularSolutionPlusHomogeneous ∧ S.generalSolutionCharacterized

theorem superposition_closed_from_evidence
    {A : LinearPDEAdmittedObject} {C : CharacteristicCurvePackage A}
    {P : CauchyProblemPackage C} {T : TransportEquationPackage P}
    (S : SuperpositionPackage T) (E : SuperpositionEvidence S) :
    SuperpositionClosed S :=
  And.intro E.linearCombinationClosureClosed
    (And.intro E.particularSolutionPlusHomogeneousClosed E.generalSolutionCharacterizedClosed)

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse
