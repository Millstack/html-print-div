# html-print-div
printing only selected div using only HTML and JavaScript

`script` for printing on a new window
```
<script>
        function printDiv(divId) {
            var printContents = document.getElementById(divId).outerHTML;
            var originalContents = document.body.innerHTML;

            // Create a new div for printing
            var printWindow = window.open('', '_blank');
            printWindow.document.open();
            printWindow.document.write('<html><head><title>Print</title></head><body>');

            // Append the content to the new window
            printWindow.document.write(printContents);

            // Close the body and html tags
            printWindow.document.write('</body></html>');
            printWindow.document.close();

            // Trigger the print function
            printWindow.print();

            // Close the new window
            printWindow.close();

            // Restore the original content
            document.body.innerHTML = originalContents;
        }
    </script>
```
