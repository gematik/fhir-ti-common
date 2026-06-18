// ValueSet: TIFlowOrderTaskStatusVS
// Id: tiflow-order-task-status-vs
// Title: "TIFlow Order Task ValueSet"
// Description: "TIFlow Order Task ValueSet"
// * insert Meta-VS

// // preserve the version of this resource
// * ^version = "1.4.0"
// * ^date = "2026-06-30"
// * ^status = #draft

// * $hl7-task-status-cs|4.0.1#draft
// * $hl7-task-status-cs|4.0.1#ready
// * $hl7-task-status-cs|4.0.1#on-hold
// * $hl7-task-status-cs|4.0.1#in-progress
// * $hl7-task-status-cs|4.0.1#completed
// * $hl7-task-status-cs|4.0.1#cancelled

// // * insert Date(^expansion.timestamp)

// // // expansion of explicitly defined codes
// // * insert VSExpansionNoDisplayDesignation($hl7-task-status-cs, active, de-DE, Aktiv)
// // * insert VSExpansionNoDisplayDesignation($hl7-task-status-cs, completed, de-DE, Abgeschlossen)
// // * insert VSExpansionNoDisplayDesignation($hl7-task-status-cs, cancelled, de-DE, Abgebrochen)