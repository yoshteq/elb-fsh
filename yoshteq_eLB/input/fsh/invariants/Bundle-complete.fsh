Invariant: Bundle-complete
Description: "Alle Bundle entries müssen im Bundle auflösbar sein"
Severity: #error
Expression: "%context.parameter.where(resource is Bundle).resource.entry.descendants().reference.distinct().all($this in %context.parameter.where(resource is Bundle).resource.entry.fullUrl.select($this.toString()))"