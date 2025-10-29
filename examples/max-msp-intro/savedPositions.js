mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;

// Enable Max message debug mode
post("Debug mode enabled\n");

// Debug: Print initialization
post("savedPositions.js initialized\n");
post("Max version: " + max.version + "\n");
outlet(0, "savedPositions.js initialized");

var positions = [];  // Array instead of dictionary
var lineHeight = 20;
var padding = 10;
var colWidth = 150;  // Increased space between key and values
var highlightedRow = -1;  // Track which row is highlighted
var highlightTimer = null;  // Timer for clearing highlight

var coordMode = "Pose"; // Default mode


function formatNumber(num) {
    var n = Number(num);
    var str = Math.abs(n).toFixed(4);  // Format absolute value
    var spaces = "";
    // Add spaces until total length (including - sign if negative) is 12
    while ((spaces + str).length < (n < 0 ? 11 : 12)) {
        spaces += " ";
    }
    return spaces + (n < 0 ? "-" : " ")  + str;
}

function formatValue(value) {
    if (typeof value === 'string') {
        var nums = value.split(" ");
        var formatted = nums.map(formatNumber);
        return formatted.join("    ");  // 4 spaces between numbers for better spacing
    }
    return "";
}

function paint() {
    var width = box.rect[2];
    var height = box.rect[3];
    
    // Clear background
    mgraphics.set_source_rgba(1, 1, 1, 1);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
    
    for (var i = 0; i < positions.length; i++) {
        var pos = positions[i];
        var y = (i + 1) * lineHeight;
        
        // Draw row background
        if (i === highlightedRow) {
            // Highlighted row (blue)
            mgraphics.set_source_rgba(0.2, 0.4, 1, 0.3);
        } else if (i % 2 === 0) {
            // Alternate row backgrounds
            mgraphics.set_source_rgba(0.95, 0.95, 0.95, 1);
        } else {
            // Normal row
            mgraphics.set_source_rgba(1, 1, 1, 1);
        }
        mgraphics.rectangle(0, y - lineHeight, width, lineHeight);
        mgraphics.fill();
        
        mgraphics.set_source_rgb(0, 0, 0);
        mgraphics.set_font_size(11);
        
        // Draw index and key
        mgraphics.set_line_width(1);
        mgraphics.move_to(padding, y - 5);
        mgraphics.show_text(i + ": " + pos.key);
        
        // Draw values
        var formattedValue = formatValue(pos.coords.join(" "));
        mgraphics.move_to(padding + colWidth, y - 5);
        mgraphics.show_text(formattedValue);
    }
}

function onclick(x, y) {
    var row = Math.floor(y / lineHeight);  // Removed the -1 to match display index
    
    if (row >= 0 && row < positions.length) {
        var position = positions[row];

        getPosition(row);  // Call getPosition to output coordinates

        // Clear any existing highlight timer
        if (highlightTimer) {
            highlightTimer.cancel();
        }
        
        // Set highlighted row and redraw
        highlightedRow = row;
        mgraphics.redraw();
        
        // Clear highlight after 150ms
        highlightTimer = new Task(function() {
            highlightedRow = -1;
            mgraphics.redraw();
            highlightTimer = null;
        }, [], 150);
    }
}

function addPosition(position, key, coord1, coord2, coord3, coord4, coord5, coord6) {
    // Validate all arguments are present
    if (arguments.length !== 8) {
        post("Error: Incorrect number of arguments. Expected: position, key, and 6 coordinates\n");
        return;
    }

    // Validate key is a string
    if (typeof key !== 'string') {
        post("Error: Key must be a string\n");
        return;
    }

    // Convert coordinates to numbers and validate
    var coords = [coord1, coord2, coord3, coord4, coord5, coord6].map(Number);
    if (coords.some(isNaN)) {
        post("Error: All coordinates must be numbers\n");
        return;
    }

    var pos = {
        key: key,
        coords: coords
    };

    // Handle position
    var index;
    position = Number(position);
    
    if (position === -1) {
        // Add to beginning
        positions.unshift(pos);
        index = 0;
    } else if (position === -2 || position >= positions.length) {
        // Add to end
        positions.push(pos);
        index = positions.length - 1;
    } else if (position >= 0) {
        // Insert at specific position
        positions.splice(position, 0, pos);
        index = position;
    } else {
        post("Error: Invalid position. Use -1 (beginning), -2 (end), or >= 0\n");
        return;
    }

    outlet(0, "Added position at index", index);
    mgraphics.redraw();
}

function removePosition(indexOrKey) {
    var index = -1;
    
    if (typeof indexOrKey === 'number') {
        index = indexOrKey;
    } else if (typeof indexOrKey === 'string') {
        // Manual search since .findIndex() is not available in Max/MSP's JavaScript
        for (var i = 0; i < positions.length; i++) {
            if (positions[i].key === indexOrKey) {
                index = i;
                break;
            }
        }
    }
    
    if (index >= 0 && index < positions.length) {
        var removed = positions.splice(index, 1)[0];
        outlet(0, "Removed position", removed.key, "at index", index);
        mgraphics.redraw();
    }
}

function getPosition(indexOrKey) {
    var position;
    
    if (typeof indexOrKey === 'number') {
        position = positions[indexOrKey];
    } else if (typeof indexOrKey === 'string') {
        // Manual search since .find() is not available in Max/MSP's JavaScript
        for (var i = 0; i < positions.length; i++) {
            if (positions[i].key === indexOrKey) {
                position = positions[i];
                break;
            }
        }
    }
    
    if (position) {
        var formattedCoords = position.coords.join(", ");
        outlet(0, "coordinates", formattedCoords);  // Output coordinates as formatted string
    }
}

function setCoordMode(mode) {
    if (mode !== "Joints" && mode !== "Pose") {
        post("Error: setCoordMode expects 'Joints' or 'Pose'\n");
        return;
    }
    coordMode = mode;
    positions = []; // Clear all saved positions
    mgraphics.redraw();
    post("Coordinate mode set to: " + coordMode + "\n");
    outlet(0, "coordMode", coordMode);
}

function saveToFile(filename) {
    var filepath;
    if (filename) {
        filepath = filename;
    } else {
        filepath = (coordMode === "Joints" ? "positions_joints.json" : "positions_pose.json");
    }
    // Get the path relative to the patcher
    var fullPath = this.patcher.filepath;
    var patcherPath = fullPath ? fullPath.slice(0, fullPath.lastIndexOf('/') + 1) : '';
    var saveFilePath = patcherPath + filepath;
    
    var content = JSON.stringify(positions, null, 2);
    post("Saving to: " + saveFilePath + "\n");
    // Also print what will be saved for debugging
    post("Content to save:\n" + content + "\n");
    outlet(0, "Saving content:", content);

    // Write new content using proper Max/MSP truncation method
    var f = new File(saveFilePath, "write");
    if (f.isopen) {
        f.writestring(content);
        // This is the key: set EOF to current position to truncate file
        f.eof = f.position;
        post("Written " + content.length + " bytes, set EOF to position " + f.position + "\n");
        f.close();
        outlet(0, "Saved to", saveFilePath);
    } else {
        outlet(0, "Error: Could not open file for writing:", saveFilePath);
    }
}

function loadFromFile(filename) {
    var filepath;
    if (filename) {
        filepath = filename;
    } else {
        filepath = (coordMode === "Joints" ? "positions_joints.json" : "positions_pose.json");
    }
    // Get the path relative to the patcher
    var fullPath = this.patcher.filepath;
    var patcherPath = fullPath ? fullPath.slice(0, fullPath.lastIndexOf('/') + 1) : '';
    var loadFilePath = patcherPath + filepath;
    
    post("Loading from: " + loadFilePath + "\n");
    var f = new File(loadFilePath);
    if (f.isopen) {
        var content = f.readstring(f.eof);
        f.close();
        try {
            positions = JSON.parse(content);
            outlet(0, "Loaded", positions.length, "positions from", loadFilePath);
            mgraphics.redraw();
        } catch(e) {
            outlet(0, "Error parsing file:", e.message);
        }
    } else {
        outlet(0, "Error: Could not open file for reading:", loadFilePath);
    }
}

function bang() {
    outlet(0, "Current positions:", JSON.stringify(positions, null, 2));  // Pretty print the current state
    mgraphics.redraw();
}

function msg_float(v) {
    post("Received float: " + v + "\n");
}

function msg_int(v) {
    post("Received int: " + v + "\n");
}

function msg_symbol(v) {
    post("Received symbol: " + v + "\n");
    handleCommand(v, []);
}

function bang() {
    post("Received bang\n");
    outlet(0, "Current positions:", JSON.stringify(positions, null, 2));
    mgraphics.redraw();
}

function list() {
    var args = arrayfromargs(arguments);
    post("Received list: " + args.join(" ") + "\n");
    if (args.length > 0) {
        handleCommand(args[0], args.slice(1));
    }
}

// Expose direct command functions for Max/MSP
function add() {
    var args = arrayfromargs(arguments);
    if (args.length !== 8) {
        post("Error: add requires exactly 8 arguments: position, key, and 6 coordinates\n");
        return;
    }
    addPosition.apply(null, args);
}

function remove() {
    var args = arrayfromargs(arguments);
    if (args.length > 0) {
        removePosition(isNaN(args[0]) ? args[0] : parseInt(args[0]));
    }
}

function get() {
    var args = arrayfromargs(arguments);
    if (args.length > 0) {
        getPosition(isNaN(args[0]) ? args[0] : parseInt(args[0]));
    }
}

function set() {
    var args = arrayfromargs(arguments);
    if (args.length >= 2) {
        addPosition(args[0], args.slice(1).join(" "));
    }
}

function clear() {
    positions = [];
    mgraphics.redraw();
}

function save() {
    var args = arrayfromargs(arguments);
    saveToFile(args[0]);
}

function load() {
    var args = arrayfromargs(arguments);
    loadFromFile(args[0]);
}

function dump() {
    post("Dumping positions:\n");
    post(JSON.stringify(positions, null, 2) + "\n");
    outlet(0, JSON.stringify(positions, null, 2));
}

function handleCommand(cmd, args) {
    post("Command: " + cmd + " Args: " + args.join(" ") + "\n");
    
    switch(cmd) {
        case "add":
            add.apply(null, args);
            break;
            
        case "remove":
            remove.apply(null, args);
            break;
            
        case "get":
            get.apply(null, args);
            break;
            
        case "set":
            set.apply(null, args);
            break;
            
        case "clear":
            clear();
            break;
            
        case "save":
            save.apply(null, args);
            break;
            
        case "load":
            load.apply(null, args);
            break;
            
        case "dump":
            dump();
            break;
            
        default:
            post("Unknown command: " + cmd + "\n");
            break;
    }
}