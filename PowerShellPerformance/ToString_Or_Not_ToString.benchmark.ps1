Import-Module Benchpress -Global
bench -Technique @{
    'ToString' = {
        $PWD.ToString()
    }
    'Quoted' = {
        "$pwd"
    }
} 
