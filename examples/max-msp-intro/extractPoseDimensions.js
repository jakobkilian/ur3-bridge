// js node for extracting pose and joints values
inlets = 2;
outlets = 7;

var mode = ""; // Current mode: "Joints" or "Pose"

// Handle mode setting from second inlet (inlet 1)
function setMode() {
	post("got sth list");
    if (inlet === 1) {
        var modeInput = arguments[0];
        if (modeInput === "Joints" || modeInput === "Pose") {
            mode = modeInput;
            post("Mode set to: " + mode + "\n");
        } else {
            post("Invalid mode. Use 'Joints' or 'Pose'\n");
        }
    }
}

function anything() {
    var input = messagename;
    var match;
    var dataType;
    
    // Only process on inlet 0 (first inlet)
    if (inlet != 0) {
        return;
    }
    
    // Check for joints pattern first
    match = input.match(/joints:\[([-\d\.\,\s]+)\]/);
    if (match) {
        dataType = "Joints";
    } else {
        // Check for pose pattern
        match = input.match(/pose:p\[([-\d\.\,\s]+)\]/);
        if (match) {
            dataType = "Pose";
        }
    }
    
    // Only process if mode matches input type
    if (match && mode === dataType) {
        // Extract the numbers part and split by comma
        var numbersString = match[1];
        var numbers = numbersString.split(',');
        
        // Parse each number and output through separate outlets
        for (var i = 0; i < 6 && i < numbers.length; i++) {
            var value = parseFloat(numbers[i].trim());
            outlet(i, value);
        }
        
        // Send bang to 7th outlet after outputting coordinates
        outlet(6, "bang");
        
        // Optional: output the data type through a status outlet if needed
        // post("Processed " + dataType + " data with " + numbers.length + " values\n");
    }
    // If mode doesn't match or no valid data, do nothing (silent ignore)
}




function msg_float(f) {
    // Handle if input comes as a float
    anything();
}

function msg_int(i) {
    // Handle if input comes as an integer
    anything();
}
