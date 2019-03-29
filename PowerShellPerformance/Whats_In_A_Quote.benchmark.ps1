Import-Module Benchpress -Global
bench -Technique @{
    'SingleQuote' = {
        'that which we call a single quotation'
    }
    'DoubleQuote' = {
        "that which we call a double quotation"
    }
    'SingleHerestring' = {@'
that which we call a singly quoted herestring
'@}
    'DoubleHerestring' = {@"
that which we call a doubly quoted herestring
"@
    }
} -RepeatCount 10kb 
