#requires -Module Benchpress
bench -Technique @{
    'ToString' = {
        $PWD.ToString()
    }
    'Quoted' = {
        "$pwd"
    }
} 
