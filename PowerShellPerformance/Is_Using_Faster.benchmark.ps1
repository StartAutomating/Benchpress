#requires -Module Benchpress
$scriptBlockAst = {
    'abc'
}.Ast.EndBlock.Statements[0].PipelineElements[0].Expression
$usingScript = [scriptblock]::Create(@'
using namespace System.Management.Automation.Language
$scriptBlockAst -is [StringConstantExpressionAst]
'@)
$otherScript = {
    $scriptBlockAst -is [Management.Automation.Language.StringConstantExpressionAst]
}
bench -Technique @{
    "using" = $usingScript
    "not using" = $otherScript
}