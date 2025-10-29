// js node for extracting pose values
outlets = 6;

function anything() {
    var input = messagename;
    
    // Look for the pattern "joints:[" followed by numbers
    var match = input.match(/joints:\[([-\d\.\,\s]+)\]/);
    
    if (match) {
        // Extract the numbers part and split by comma
        var numbersString = match[1];
        var numbers = numbersString.split(',');
        
        // Parse each number and output through separate outlets
        for (var i = 0; i < 6 && i < numbers.length; i++) {
            var value = parseFloat(numbers[i].trim());
            outlet(i, value);
        }
    } else {
        post("No valid joints data found in: " + input + "\n");
    }
}

function msg_float(f) {
    // Handle if input comes as a symbol
    anything();
}

function msg_int(i) {
    // Handle if input comes as a symbol  
    anything();
}