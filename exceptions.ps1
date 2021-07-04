function twoDividedBy {
    param (
        [int]$divisor
    )
    
    
    try {
        $v = 2 / $divisor;
        return $v;
    }
    catch {
        throw "Error dividing 2 by $divisor"
    }
}

try {
    twoDividedBy 1;
    twoDividedBy 0;
}
catch {
    if ($PSItem.Exception) { throw; }
    else {
        throw "Something else went wrong";
    }

}