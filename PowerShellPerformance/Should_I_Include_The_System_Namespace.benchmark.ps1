Import-Module Benchpress -Global
bench -Technique @{
    'SystemNamespaceIncluded' = {
        [System.IO.Path]
    }
    'NoSytemNamespace' = {
        [IO.Path]
    }
} 
