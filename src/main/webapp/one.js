function sortTable() {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("myTable");
    switching = true;
    var sortOrder = document.getElementById("sort").value;
    while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            x = rows[i].getElementsByTagName("TD")[3];
            y = rows[i + 1].getElementsByTagName("TD")[3];
            if (sortOrder === 'asc') {
                if (Number(x.innerHTML) > Number(y.innerHTML)) {
                    shouldSwitch= true;
                    break;
                }
            } else if (sortOrder === 'desc') {
                if (Number(x.innerHTML) < Number(y.innerHTML)) {
                    shouldSwitch= true;
                    break;
                }
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}
function sortCar() {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("tabela");
    switching = true;
    var sortOrder = document.getElementById("sort-car").value;
    while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 1; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            x = rows[i].getElementsByTagName("TD")[4];
            y = rows[i + 1].getElementsByTagName("TD")[4];
            if (sortOrder === 'asc') {
                if (Number(x.innerHTML) > Number(y.innerHTML)) {
                    shouldSwitch= true;
                    break;
                }
            } else if (sortOrder === 'desc') {
                if (Number(x.innerHTML) < Number(y.innerHTML)) {
                    shouldSwitch= true;
                    break;
                }
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
        }
    }
}
function validateSelection() {
    var selectedFlights = document.getElementsByName("selectedSecond");
        if (selectedFlights.checked>1) {

            alert("Please select only one flight.");
            return false;
        }
        if (selectedFlights.checked===1) {
                return true;
            }

    if (selectedFlights.checked<0) {
        alert("Please select one flight.");
        return false;
    }
}


$('#select-all').click(function(event) {
    if(this.checked) {
        // Iterate each checkbox
        $(':checkbox').each(function() {
            this.checked = true;
        });
    } else {
        $(':checkbox').each(function() {
            this.checked = false;
        });
    }
});

function toggle(source) {
    var checkboxes = document.querySelectorAll('input[type="checkbox"]');
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] != source)
            checkboxes[i].checked = source.checked;
    }
}

function checkAll(checkname, bx) {
    for (i = checkname.length; i--; )
        checkname[i].checked = bx.checked;
}

function checkAllInRow(checkbox) {
    // Get the table row that contains the clicked checkbox
    var row = checkbox.closest('tr');

    // Get all the checkboxes in the row
    var checkboxes = row.getElementsByTagName('input');

    // Check all the checkboxes in the row except the clicked one
    for (var i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i] !== checkbox && checkboxes[i].type === 'checkbox') {
            checkboxes[i].checked = checkbox.checked;
        }
    }}

function date() {
    var date1 = document.getElementById("start").value;
    var date2 = document.getElementById("end").value;
    var price = document.getElementById("selectedCena").value;


    // To calculate the time difference of two dates
    var Difference_In_Time = new Date(date2).getTime() - new Date(date1).getTime();
    var durationInDays = Difference_In_Time / (1000 * 3600 * 24);

    // Calculate the total price and display the result


    // Display the discount message
    var discountMessage = "chleb";
    if (durationInDays > 7) {
        durationInDays -=1;
        discountMessage = "Gratulacje, dostałeś jeden dzień za darmo!";
    } else {
        discountMessage = "";
    }
     document.getElementById("result").innerHTML = durationInDays * price;
    document.getElementById("discount").innerHTML = discountMessage;

    return false; // prevent form submission
}