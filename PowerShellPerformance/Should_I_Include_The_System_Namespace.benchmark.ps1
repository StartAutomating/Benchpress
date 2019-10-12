#requires -Module Benchpress
bench -Technique @{
    'SystemNamespaceIncluded' = {
        [System.IO.Path]
    }
    'NoSytemNamespace' = {
        [IO.Path]
    }
} 
